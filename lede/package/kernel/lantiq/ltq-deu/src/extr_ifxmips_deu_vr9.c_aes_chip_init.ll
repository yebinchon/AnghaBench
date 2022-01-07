; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_deu_vr9.c_aes_chip_init.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_deu_vr9.c_aes_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@AES_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aes_chip_init() #0 {
  %1 = alloca %struct.aes_t*, align 8
  %2 = load i64, i64* @AES_START, align 8
  %3 = inttoptr i64 %2 to %struct.aes_t*
  store %struct.aes_t* %3, %struct.aes_t** %1, align 8
  %4 = load %struct.aes_t*, %struct.aes_t** %1, align 8
  %5 = getelementptr inbounds %struct.aes_t, %struct.aes_t* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store volatile i32 1, i32* %6, align 8
  %7 = load %struct.aes_t*, %struct.aes_t** %1, align 8
  %8 = getelementptr inbounds %struct.aes_t, %struct.aes_t* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  store volatile i64 0, i64* %9, align 8
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  %10 = load %struct.aes_t*, %struct.aes_t** %1, align 8
  %11 = getelementptr inbounds %struct.aes_t, %struct.aes_t* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store volatile i32 1, i32* %12, align 4
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !3
  %13 = load %struct.aes_t*, %struct.aes_t** %1, align 8
  %14 = getelementptr inbounds %struct.aes_t, %struct.aes_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store volatile i64 0, i64* %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 461}
!3 = !{i32 506}
