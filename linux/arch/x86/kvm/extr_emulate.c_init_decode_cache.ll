; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_init_decode_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_init_decode_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_decode_cache(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca %struct.x86_emulate_ctxt*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %2, align 8
  %3 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %4 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %3, i32 0, i32 2
  %5 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %6 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %5, i32 0, i32 3
  %7 = bitcast i32* %6 to i8*
  %8 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %9 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %8, i32 0, i32 2
  %10 = bitcast i32* %9 to i8*
  %11 = ptrtoint i8* %7 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @memset(i32* %4, i32 0, i32 %14)
  %16 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %17 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %20 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %2, align 8
  %23 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
