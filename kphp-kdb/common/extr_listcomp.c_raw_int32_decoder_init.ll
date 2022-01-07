; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_raw_int32_decoder_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_raw_int32_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@raw_int32_decode_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_decoder*)* @raw_int32_decoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_int32_decoder_init(%struct.list_decoder* %0) #0 {
  %2 = alloca %struct.list_decoder*, align 8
  store %struct.list_decoder* %0, %struct.list_decoder** %2, align 8
  %3 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %4 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 7
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %13 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %15 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.list_decoder*, %struct.list_decoder** %2, align 8
  %20 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %19, i32 0, i32 0
  store i32* @raw_int32_decode_int, i32** %20, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
