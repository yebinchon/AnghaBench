; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_family.c_genl_family_add_op.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_family.c_genl_family_add_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32, i32 }
%struct.genl_family_op = type { i32, i32, i32 }

@NLE_NOMEM = common dso_local global i32 0, align 4
@FAMILY_ATTR_OPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genl_family_add_op(%struct.genl_family* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_family*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.genl_family_op*, align 8
  store %struct.genl_family* %0, %struct.genl_family** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call %struct.genl_family_op* @calloc(i32 1, i32 12)
  store %struct.genl_family_op* %9, %struct.genl_family_op** %8, align 8
  %10 = load %struct.genl_family_op*, %struct.genl_family_op** %8, align 8
  %11 = icmp eq %struct.genl_family_op* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @NLE_NOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %32

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.genl_family_op*, %struct.genl_family_op** %8, align 8
  %18 = getelementptr inbounds %struct.genl_family_op, %struct.genl_family_op* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.genl_family_op*, %struct.genl_family_op** %8, align 8
  %21 = getelementptr inbounds %struct.genl_family_op, %struct.genl_family_op* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.genl_family_op*, %struct.genl_family_op** %8, align 8
  %23 = getelementptr inbounds %struct.genl_family_op, %struct.genl_family_op* %22, i32 0, i32 2
  %24 = load %struct.genl_family*, %struct.genl_family** %5, align 8
  %25 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %24, i32 0, i32 1
  %26 = call i32 @nl_list_add_tail(i32* %23, i32* %25)
  %27 = load i32, i32* @FAMILY_ATTR_OPS, align 4
  %28 = load %struct.genl_family*, %struct.genl_family** %5, align 8
  %29 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %15, %12
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.genl_family_op* @calloc(i32, i32) #1

declare dso_local i32 @nl_list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
