; ModuleID = '/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c___touch_tmp_base.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c___touch_tmp_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_open_data = type { i32, i64, %struct.ipv4_range* }
%struct.ipv4_range = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"salist: cannot allocate the temporary list for enlarging it.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sa_open_data*, i32)* @__touch_tmp_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__touch_tmp_base(%struct.sa_open_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sa_open_data*, align 8
  %5 = alloca i32, align 4
  store %struct.sa_open_data* %0, %struct.sa_open_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sa_open_data*, %struct.sa_open_data** %4, align 8
  %7 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %6, i32 0, i32 2
  %8 = load %struct.ipv4_range*, %struct.ipv4_range** %7, align 8
  %9 = icmp ne %struct.ipv4_range* %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %2
  %11 = load %struct.sa_open_data*, %struct.sa_open_data** %4, align 8
  %12 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 100
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.sa_open_data*, %struct.sa_open_data** %4, align 8
  %17 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %16, i32 0, i32 0
  store i32 100, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.sa_open_data*, %struct.sa_open_data** %4, align 8
  %20 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call i64 @malloc(i32 %24)
  %26 = inttoptr i64 %25 to %struct.ipv4_range*
  %27 = load %struct.sa_open_data*, %struct.sa_open_data** %4, align 8
  %28 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %27, i32 0, i32 2
  store %struct.ipv4_range* %26, %struct.ipv4_range** %28, align 8
  %29 = load %struct.sa_open_data*, %struct.sa_open_data** %4, align 8
  %30 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %29, i32 0, i32 2
  %31 = load %struct.ipv4_range*, %struct.ipv4_range** %30, align 8
  %32 = icmp ne %struct.ipv4_range* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %18
  %39 = load %struct.sa_open_data*, %struct.sa_open_data** %4, align 8
  %40 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %2
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
