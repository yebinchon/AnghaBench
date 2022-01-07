; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_serialize_reflog_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_serialize_reflog_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8* }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32*, i32*, i8*)* @serialize_reflog_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serialize_reflog_entry(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %24 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @git_oid_tostr(i8* %19, i32 %25, i32* %26)
  %28 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @git_oid_tostr(i8* %23, i32 %29, i32* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = call i32 @git_buf_clear(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = call i32 @git_buf_puts(%struct.TYPE_9__* %34, i8* %19)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = call i32 @git_buf_putc(%struct.TYPE_9__* %36, i8 signext 32)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = call i32 @git_buf_puts(%struct.TYPE_9__* %38, i8* %23)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @git_signature__writebuf(%struct.TYPE_9__* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = call i32 @git_buf_rtrim(%struct.TYPE_9__* %43)
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %83

47:                                               ; preds = %5
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = call i32 @git_buf_putc(%struct.TYPE_9__* %48, i8 signext 9)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @git_buf_puts(%struct.TYPE_9__* %50, i8* %51)
  store i64 0, i64* %14, align 8
  br label %53

53:                                               ; preds = %77, %47
  %54 = load i64, i64* %14, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %54, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %53
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 32, i8* %75, align 1
  br label %76

76:                                               ; preds = %70, %61
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %14, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %14, align 8
  br label %53

80:                                               ; preds = %53
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = call i32 @git_buf_rtrim(%struct.TYPE_9__* %81)
  br label %83

83:                                               ; preds = %80, %5
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = call i32 @git_buf_putc(%struct.TYPE_9__* %84, i8 signext 10)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = call i32 @git_buf_oom(%struct.TYPE_9__* %86)
  %88 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %88)
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_oid_tostr(i8*, i32, i32*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_9__*) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @git_buf_putc(%struct.TYPE_9__*, i8 signext) #2

declare dso_local i32 @git_signature__writebuf(%struct.TYPE_9__*, i8*, i32*) #2

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_9__*) #2

declare dso_local i32 @git_buf_oom(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
