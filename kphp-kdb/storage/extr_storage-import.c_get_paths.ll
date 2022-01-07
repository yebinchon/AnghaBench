; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_get_paths.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_get_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @get_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_paths(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @MAX_DIRS, align 4
  %10 = zext i32 %9 to i64
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strtok(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  br label %15

15:                                               ; preds = %32, %2
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MAX_DIRS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @free(i8* %23)
  store i32 -1, i32* %3, align 4
  br label %36

25:                                               ; preds = %18
  %26 = load i8*, i8** %7, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  store i8* %26, i8** %31, align 8
  br label %32

32:                                               ; preds = %25
  %33 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %7, align 8
  br label %15

34:                                               ; preds = %15
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
