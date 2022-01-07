; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_treeboot-bamboo.c_read_pibs_mac.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_treeboot-bamboo.c_read_pibs_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIBS_MAC0 = common dso_local global i64 0, align 8
@pibs_mac0 = common dso_local global i32 0, align 4
@PIBS_MAC1 = common dso_local global i64 0, align 8
@pibs_mac1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_pibs_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_pibs_mac() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @PIBS_MAC0, align 8
  %3 = inttoptr i64 %2 to i8*
  %4 = call i64 @strtoull(i8* %3, i32 0, i32 16)
  store i64 %4, i64* %1, align 8
  %5 = bitcast i64* %1 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 2
  %7 = call i32 @memcpy(i32* @pibs_mac0, i8* %6, i32 6)
  %8 = load i64, i64* @PIBS_MAC1, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = call i64 @strtoull(i8* %9, i32 0, i32 16)
  store i64 %10, i64* %1, align 8
  %11 = bitcast i64* %1 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 2
  %13 = call i32 @memcpy(i32* @pibs_mac1, i8* %12, i32 6)
  ret void
}

declare dso_local i64 @strtoull(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
