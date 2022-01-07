; ModuleID = '/home/carl/AnghaBench/git/extr_http-walker.c_fetch_indices.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-walker.c_fetch_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { i64 }
%struct.alt_base = type { i32, i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Getting pack list for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walker*, %struct.alt_base*)* @fetch_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_indices(%struct.walker* %0, %struct.alt_base* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.walker*, align 8
  %5 = alloca %struct.alt_base*, align 8
  %6 = alloca i32, align 4
  store %struct.walker* %0, %struct.walker** %4, align 8
  store %struct.alt_base* %1, %struct.alt_base** %5, align 8
  %7 = load %struct.alt_base*, %struct.alt_base** %5, align 8
  %8 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.walker*, %struct.walker** %4, align 8
  %14 = getelementptr inbounds %struct.walker, %struct.walker* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.alt_base*, %struct.alt_base** %5, align 8
  %20 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %17, %12
  %24 = load %struct.alt_base*, %struct.alt_base** %5, align 8
  %25 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.alt_base*, %struct.alt_base** %5, align 8
  %28 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %27, i32 0, i32 2
  %29 = call i32 @http_get_info_packs(i8* %26, i32* %28)
  switch i32 %29, label %33 [
    i32 128, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %23, %23
  %31 = load %struct.alt_base*, %struct.alt_base** %5, align 8
  %32 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  store i32 0, i32* %6, align 4
  br label %36

33:                                               ; preds = %23
  %34 = load %struct.alt_base*, %struct.alt_base** %5, align 8
  %35 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  store i32 -1, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @http_get_info_packs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
