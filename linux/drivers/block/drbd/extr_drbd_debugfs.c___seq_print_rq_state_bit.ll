; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c___seq_print_rq_state_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c___seq_print_rq_state_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i8*, i8*, i8*)* @__seq_print_rq_state_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__seq_print_rq_state_bit(%struct.seq_file* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %5
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @seq_putc(%struct.seq_file* %17, i8 signext %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %21, i8* %22)
  %24 = load i8*, i8** %8, align 8
  store i8 124, i8* %24, align 1
  br label %41

25:                                               ; preds = %13, %5
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @seq_putc(%struct.seq_file* %32, i8 signext %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @seq_puts(%struct.seq_file* %36, i8* %37)
  %39 = load i8*, i8** %8, align 8
  store i8 124, i8* %39, align 1
  br label %40

40:                                               ; preds = %31, %28, %25
  br label %41

41:                                               ; preds = %40, %16
  ret void
}

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
