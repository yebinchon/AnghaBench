; ModuleID = '/home/carl/AnghaBench/lede/package/utils/fritz-tools/src/extr_fritz_tffs_read.c_get_header_len.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/fritz-tools/src/extr_fritz_tffs_read.c_get_header_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tffs_entry_header = type { i32 }

@swap_bytes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tffs_entry_header*)* @get_header_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_header_len(%struct.tffs_entry_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tffs_entry_header*, align 8
  store %struct.tffs_entry_header* %0, %struct.tffs_entry_header** %3, align 8
  %4 = load i64, i64* @swap_bytes, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.tffs_entry_header*, %struct.tffs_entry_header** %3, align 8
  %8 = getelementptr inbounds %struct.tffs_entry_header, %struct.tffs_entry_header* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ntohs(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.tffs_entry_header*, %struct.tffs_entry_header** %3, align 8
  %13 = getelementptr inbounds %struct.tffs_entry_header, %struct.tffs_entry_header* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
