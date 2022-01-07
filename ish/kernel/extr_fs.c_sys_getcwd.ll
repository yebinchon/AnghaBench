; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_getcwd.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_getcwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.fd* }
%struct.fd = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"getcwd(%#x, %#x)\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@_ERANGE = common dso_local global i32 0, align 4
@_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" \22%.*s\22\00", align 1
@_EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_getcwd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @lock(i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.fd*, %struct.fd** %24, align 8
  store %struct.fd* %25, %struct.fd** %6, align 8
  %26 = load i32, i32* @MAX_PATH, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %7, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %8, align 8
  %31 = load %struct.fd*, %struct.fd** %6, align 8
  %32 = call i32 @generic_getpath(%struct.fd* %31, i8* %30)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @unlock(i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

42:                                               ; preds = %2
  %43 = call i32 @strlen(i8* %30)
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @_ERANGE, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

49:                                               ; preds = %42
  %50 = call i32 @strlen(i8* %30)
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i8* @malloc(i32 %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @_ENOMEM, align 4
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

58:                                               ; preds = %49
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @strcpy(i8* %59, i8* %30)
  %61 = load i32, i32* %5, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 (i8*, i32, ...) @STRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %61, i8* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @user_write(i32 %65, i8* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @_EFAULT, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %70, %58
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %56, %47, %40
  %77 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @STRACE(i8*, i32, ...) #1

declare dso_local i32 @lock(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @generic_getpath(%struct.fd*, i8*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @user_write(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
