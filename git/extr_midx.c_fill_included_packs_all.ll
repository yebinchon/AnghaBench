; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_fill_included_packs_all.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_fill_included_packs_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multi_pack_index = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.multi_pack_index*, i8*)* @fill_included_packs_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_included_packs_all(%struct.multi_pack_index* %0, i8* %1) #0 {
  %3 = alloca %struct.multi_pack_index*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.multi_pack_index* %0, %struct.multi_pack_index** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %16, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %9 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8 1, i8* %15, align 1
  br label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %5, align 8
  br label %6

19:                                               ; preds = %6
  %20 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %21 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %22, 2
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
