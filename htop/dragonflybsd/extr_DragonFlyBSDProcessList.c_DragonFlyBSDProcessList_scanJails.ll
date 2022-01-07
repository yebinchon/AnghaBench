; ModuleID = '/home/carl/AnghaBench/htop/dragonflybsd/extr_DragonFlyBSDProcessList.c_DragonFlyBSDProcessList_scanJails.c'
source_filename = "/home/carl/AnghaBench/htop/dragonflybsd/extr_DragonFlyBSDProcessList.c_DragonFlyBSDProcessList_scanJails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"jail.list\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"initial sysctlbyname / jail.list failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"xMalloc failed\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"sysctlbyname / jail.list failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @DragonFlyBSDProcessList_scanJails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DragonFlyBSDProcessList_scanJails(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %10 = call i32 @sysctlbyname(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* null, i64* %3, i32* null, i32 0)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @exit(i32 3) #3
  unreachable

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %98

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = call i8* @xMalloc(i64 %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @exit(i32 4) #3
  unreachable

30:                                               ; preds = %21
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @sysctlbyname(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %31, i64* %3, i32* null, i32 0)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOMEM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @free(i8* %39)
  br label %17

41:                                               ; preds = %34
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @exit(i32 5) #3
  unreachable

45:                                               ; preds = %30
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @Hashtable_delete(i64 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = call i64 @Hashtable_new(i32 20, i32 1)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %4, align 8
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %93, %55
  %61 = load i8*, i8** %5, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load i8*, i8** %5, align 8
  %65 = call i8* @strchr(i8* %64, i8 signext 10)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  store i8 0, i8* %69, align 1
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i8*, i8** %5, align 8
  %73 = call i8* @strtok(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32 @atoi(i8* %73)
  store i32 %74, i32* %7, align 4
  %75 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %75, i8** %8, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @Hashtable_get(i64 %78, i32 %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %71
  %85 = load i8*, i8** %8, align 8
  %86 = call i8* @xStrdup(i8* %85)
  store i8* %86, i8** %9, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @Hashtable_put(i64 %89, i32 %90, i8* %91)
  br label %93

93:                                               ; preds = %84, %71
  %94 = load i8*, i8** %6, align 8
  store i8* %94, i8** %5, align 8
  br label %60

95:                                               ; preds = %60
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 @free(i8* %96)
  br label %98

98:                                               ; preds = %95, %20
  ret void
}

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @xMalloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @Hashtable_delete(i64) #1

declare dso_local i64 @Hashtable_new(i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @Hashtable_get(i64, i32) #1

declare dso_local i8* @xStrdup(i8*) #1

declare dso_local i32 @Hashtable_put(i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
