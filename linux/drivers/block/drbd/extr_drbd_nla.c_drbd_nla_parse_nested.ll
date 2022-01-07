; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nla.c_drbd_nla_parse_nested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nla.c_drbd_nla_parse_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nla_policy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_nla_parse_nested(%struct.nlattr** %0, i32 %1, %struct.nlattr* %2, %struct.nla_policy* %3) #0 {
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nla_policy*, align 8
  %9 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  store %struct.nla_policy* %3, %struct.nla_policy** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %12 = call i32 @drbd_nla_check_mandatory(i32 %10, %struct.nlattr* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %19 = load %struct.nla_policy*, %struct.nla_policy** %8, align 8
  %20 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %16, i32 %17, %struct.nlattr* %18, %struct.nla_policy* %19, i32* null)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %15, %4
  %22 = load i32, i32* %9, align 4
  ret i32 %22
}

declare dso_local i32 @drbd_nla_check_mandatory(i32, %struct.nlattr*) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, %struct.nla_policy*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
