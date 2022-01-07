; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_issue_reg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_issue_reg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32 }
%struct.rsxx_reg_access = type { i32, i32, i32, i32, i32 }

@CREG_OP_READ = common dso_local global i32 0, align 4
@CREG_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsxx_cardinfo*, %struct.rsxx_reg_access*, i32)* @issue_reg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @issue_reg_cmd(%struct.rsxx_cardinfo* %0, %struct.rsxx_reg_access* %1, i32 %2) #0 {
  %4 = alloca %struct.rsxx_cardinfo*, align 8
  %5 = alloca %struct.rsxx_reg_access*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %4, align 8
  store %struct.rsxx_reg_access* %1, %struct.rsxx_reg_access** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @CREG_OP_READ, align 4
  br label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @CREG_OP_WRITE, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %7, align 4
  %16 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.rsxx_reg_access*, %struct.rsxx_reg_access** %5, align 8
  %19 = getelementptr inbounds %struct.rsxx_reg_access, %struct.rsxx_reg_access* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rsxx_reg_access*, %struct.rsxx_reg_access** %5, align 8
  %22 = getelementptr inbounds %struct.rsxx_reg_access, %struct.rsxx_reg_access* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rsxx_reg_access*, %struct.rsxx_reg_access** %5, align 8
  %25 = getelementptr inbounds %struct.rsxx_reg_access, %struct.rsxx_reg_access* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rsxx_reg_access*, %struct.rsxx_reg_access** %5, align 8
  %28 = getelementptr inbounds %struct.rsxx_reg_access, %struct.rsxx_reg_access* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rsxx_reg_access*, %struct.rsxx_reg_access** %5, align 8
  %31 = getelementptr inbounds %struct.rsxx_reg_access, %struct.rsxx_reg_access* %30, i32 0, i32 0
  %32 = call i32 @__issue_creg_rw(%struct.rsxx_cardinfo* %16, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32* %31)
  ret i32 %32
}

declare dso_local i32 @__issue_creg_rw(%struct.rsxx_cardinfo*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
