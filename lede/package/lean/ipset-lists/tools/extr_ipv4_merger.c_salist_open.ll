; ModuleID = '/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c_salist_open.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c_salist_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_open_data = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"salist: cannot allocate sa_open_data.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sa_open_data* ()* @salist_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sa_open_data* @salist_open() #0 {
  %1 = alloca %struct.sa_open_data*, align 8
  %2 = alloca %struct.sa_open_data*, align 8
  store %struct.sa_open_data* null, %struct.sa_open_data** %2, align 8
  %3 = call i64 @malloc(i32 8)
  %4 = inttoptr i64 %3 to %struct.sa_open_data*
  store %struct.sa_open_data* %4, %struct.sa_open_data** %2, align 8
  %5 = load %struct.sa_open_data*, %struct.sa_open_data** %2, align 8
  %6 = icmp ne %struct.sa_open_data* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.sa_open_data* null, %struct.sa_open_data** %1, align 8
  br label %16

10:                                               ; preds = %0
  %11 = load %struct.sa_open_data*, %struct.sa_open_data** %2, align 8
  %12 = call i32 @memset(%struct.sa_open_data* %11, i32 0, i32 8)
  %13 = load %struct.sa_open_data*, %struct.sa_open_data** %2, align 8
  %14 = getelementptr inbounds %struct.sa_open_data, %struct.sa_open_data* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.sa_open_data*, %struct.sa_open_data** %2, align 8
  store %struct.sa_open_data* %15, %struct.sa_open_data** %1, align 8
  br label %16

16:                                               ; preds = %10, %7
  %17 = load %struct.sa_open_data*, %struct.sa_open_data** %1, align 8
  ret %struct.sa_open_data* %17
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memset(%struct.sa_open_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
