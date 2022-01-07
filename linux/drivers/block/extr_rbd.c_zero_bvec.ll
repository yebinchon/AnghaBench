; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_zero_bvec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_zero_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_vec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio_vec*)* @zero_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zero_bvec(%struct.bio_vec* %0) #0 {
  %2 = alloca %struct.bio_vec*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.bio_vec* %0, %struct.bio_vec** %2, align 8
  %5 = load %struct.bio_vec*, %struct.bio_vec** %2, align 8
  %6 = call i8* @bvec_kmap_irq(%struct.bio_vec* %5, i64* %4)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.bio_vec*, %struct.bio_vec** %2, align 8
  %9 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @memset(i8* %7, i32 0, i32 %10)
  %12 = load %struct.bio_vec*, %struct.bio_vec** %2, align 8
  %13 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @flush_dcache_page(i32 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @bvec_kunmap_irq(i8* %16, i64* %4)
  ret void
}

declare dso_local i8* @bvec_kmap_irq(%struct.bio_vec*, i64*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(i32) #1

declare dso_local i32 @bvec_kunmap_irq(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
