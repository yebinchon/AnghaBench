; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_msdos_magic_present.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_msdos.c_msdos_magic_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSDOS_LABEL_MAGIC1 = common dso_local global i8 0, align 1
@MSDOS_LABEL_MAGIC2 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @msdos_magic_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_magic_present(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @MSDOS_LABEL_MAGIC1, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @MSDOS_LABEL_MAGIC2, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br label %18

18:                                               ; preds = %10, %1
  %19 = phi i1 [ false, %1 ], [ %17, %10 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
