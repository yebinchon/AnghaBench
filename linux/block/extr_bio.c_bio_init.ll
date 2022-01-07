; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_init.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i16, %struct.bio_vec*, i32, i32 }
%struct.bio_vec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_init(%struct.bio* %0, %struct.bio_vec* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio_vec*, align 8
  %6 = alloca i16, align 2
  store %struct.bio* %0, %struct.bio** %4, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %5, align 8
  store i16 %2, i16* %6, align 2
  %7 = load %struct.bio*, %struct.bio** %4, align 8
  %8 = call i32 @memset(%struct.bio* %7, i32 0, i32 24)
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 3
  %11 = call i32 @atomic_set(i32* %10, i32 1)
  %12 = load %struct.bio*, %struct.bio** %4, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 2
  %14 = call i32 @atomic_set(i32* %13, i32 1)
  %15 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 1
  store %struct.bio_vec* %15, %struct.bio_vec** %17, align 8
  %18 = load i16, i16* %6, align 2
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  store i16 %18, i16* %20, align 8
  ret void
}

declare dso_local i32 @memset(%struct.bio*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
