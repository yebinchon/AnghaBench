; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_pack_entry_hash.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_pack_entry_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packed_git*, i64)* @pack_entry_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_entry_hash(%struct.packed_git* %0, i64 %1) #0 {
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %7 = ptrtoint %struct.packed_git* %6 to i64
  %8 = trunc i64 %7 to i32
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  %11 = add i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = lshr i32 %12, 8
  %14 = load i32, i32* %5, align 4
  %15 = lshr i32 %14, 16
  %16 = add i32 %13, %15
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
