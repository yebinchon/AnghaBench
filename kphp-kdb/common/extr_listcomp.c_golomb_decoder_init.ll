; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_golomb_decoder_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_golomb_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i32, i32, i32, i32, i32*, i32, i32 }

@golomb_decode_int_big_k = common dso_local global i32 0, align 4
@golomb_decode_int_small_k = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_decoder*)* @golomb_decoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @golomb_decoder_init(%struct.list_decoder* %0) #0 {
  %2 = alloca %struct.list_decoder*, align 8
  %3 = alloca i32, align 4
  store %struct.list_decoder* %0, %struct.list_decoder** %2, align 8
  %4 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %5 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %8 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @compute_golomb_parameter(i32 %6, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %13 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @bsr(i32 %14)
  %16 = add nsw i32 %15, 1
  %17 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %18 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = shl i32 1, %16
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %19, %20
  %22 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %23 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %25 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %24, i32 0, i32 3
  store i32 -1, i32* %25, align 4
  %26 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %27 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32* @golomb_decode_int_big_k, i32* @golomb_decode_int_small_k
  %32 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %33 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  ret void
}

declare dso_local i32 @compute_golomb_parameter(i32, i32) #1

declare dso_local i32 @bsr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
