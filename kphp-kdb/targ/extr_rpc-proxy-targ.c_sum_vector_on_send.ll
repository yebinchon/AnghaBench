; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_vector_on_send.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_vector_on_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { %struct.targ_extra* }
%struct.targ_extra = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"op = 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sum_vector_on_send(%struct.gather* %0, i32 %1) #0 {
  %3 = alloca %struct.gather*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.targ_extra*, align 8
  store %struct.gather* %0, %struct.gather** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gather*, %struct.gather** %3, align 8
  %7 = getelementptr inbounds %struct.gather, %struct.gather* %6, i32 0, i32 0
  %8 = load %struct.targ_extra*, %struct.targ_extra** %7, align 8
  store %struct.targ_extra* %8, %struct.targ_extra** %5, align 8
  %9 = load %struct.targ_extra*, %struct.targ_extra** %5, align 8
  %10 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %45 [
    i32 128, label %12
    i32 129, label %27
  ]

12:                                               ; preds = %2
  %13 = load %struct.targ_extra*, %struct.targ_extra** %5, align 8
  %14 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @tl_store_int(i32 %15)
  %17 = load %struct.targ_extra*, %struct.targ_extra** %5, align 8
  %18 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, -2
  %21 = call i32 @tl_store_int(i32 %20)
  %22 = load %struct.targ_extra*, %struct.targ_extra** %5, align 8
  %23 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 100
  %26 = call i32 @tl_store_int(i32 %25)
  br label %52

27:                                               ; preds = %2
  %28 = load %struct.targ_extra*, %struct.targ_extra** %5, align 8
  %29 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tl_store_int(i32 %30)
  %32 = load %struct.targ_extra*, %struct.targ_extra** %5, align 8
  %33 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tl_store_int(i32 %34)
  %36 = load %struct.targ_extra*, %struct.targ_extra** %5, align 8
  %37 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, -2
  %40 = call i32 @tl_store_int(i32 %39)
  %41 = load %struct.targ_extra*, %struct.targ_extra** %5, align 8
  %42 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tl_store_int(i32 %43)
  br label %52

45:                                               ; preds = %2
  %46 = load i32, i32* @stderr, align 4
  %47 = load %struct.targ_extra*, %struct.targ_extra** %5, align 8
  %48 = getelementptr inbounds %struct.targ_extra, %struct.targ_extra* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = call i32 @assert(i32 0)
  br label %52

52:                                               ; preds = %45, %27, %12
  ret i32 0
}

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
