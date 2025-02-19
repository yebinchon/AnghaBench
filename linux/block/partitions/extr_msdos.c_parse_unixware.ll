; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_parse_unixware.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_parse_unixware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i8*, i64, i64, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UNIXWARE_DISKMAGIC = common dso_local global i64 0, align 8
@UNIXWARE_DISKMAGIC2 = common dso_local global i64 0, align 8
@UNIXWARE_FS_UNUSED = common dso_local global i64 0, align 8
@UNIXWARE_NUMSLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parsed_partitions*, i64, i64, i32)* @parse_unixware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_unixware(%struct.parsed_partitions* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.parsed_partitions*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.parsed_partitions* %0, %struct.parsed_partitions** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
