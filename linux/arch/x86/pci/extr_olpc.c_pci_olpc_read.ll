; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_olpc.c_pci_olpc_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_olpc.c_pci_olpc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32, i32*)* }

@pci_direct_conf1 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@zero_loc = common dso_local global i32 0, align 4
@is_lx = common dso_local global i32 0, align 4
@lxnb_hdr = common dso_local global i32 0, align 4
@gxnb_hdr = common dso_local global i32 0, align 4
@lxfb_hdr = common dso_local global i32 0, align 4
@gxfb_hdr = common dso_local global i32 0, align 4
@aes_hdr = common dso_local global i32 0, align 4
@ff_loc = common dso_local global i32 0, align 4
@isa_hdr = common dso_local global i32 0, align 4
@ac97_hdr = common dso_local global i32 0, align 4
@ohci_hdr = common dso_local global i32 0, align 4
@ehci_hdr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32*)* @pci_olpc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_olpc_read(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @is_simulated(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %6
  %22 = load i32 (i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pci_direct_conf1, i32 0, i32 0), align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 %22(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32* %28)
  store i32 %29, i32* %7, align 4
  br label %103

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = icmp sge i32 %31, 112
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32* @zero_loc, i32** %14, align 8
  br label %86

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %84 [
    i32 8, label %36
    i32 9, label %47
    i32 10, label %58
    i32 120, label %68
    i32 123, label %72
    i32 124, label %76
    i32 125, label %80
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @is_lx, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @lxnb_hdr, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @gxnb_hdr, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load i32, i32* %11, align 4
  %46 = call i32* @hdr_addr(i32 %44, i32 %45)
  store i32* %46, i32** %14, align 8
  br label %85

47:                                               ; preds = %34
  %48 = load i32, i32* @is_lx, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @lxfb_hdr, align 4
  br label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @gxfb_hdr, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load i32, i32* %11, align 4
  %57 = call i32* @hdr_addr(i32 %55, i32 %56)
  store i32* %57, i32** %14, align 8
  br label %85

58:                                               ; preds = %34
  %59 = load i32, i32* @is_lx, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* @aes_hdr, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32* @hdr_addr(i32 %62, i32 %63)
  br label %66

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32* [ %64, %61 ], [ @ff_loc, %65 ]
  store i32* %67, i32** %14, align 8
  br label %85

68:                                               ; preds = %34
  %69 = load i32, i32* @isa_hdr, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32* @hdr_addr(i32 %69, i32 %70)
  store i32* %71, i32** %14, align 8
  br label %85

72:                                               ; preds = %34
  %73 = load i32, i32* @ac97_hdr, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32* @hdr_addr(i32 %73, i32 %74)
  store i32* %75, i32** %14, align 8
  br label %85

76:                                               ; preds = %34
  %77 = load i32, i32* @ohci_hdr, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32* @hdr_addr(i32 %77, i32 %78)
  store i32* %79, i32** %14, align 8
  br label %85

80:                                               ; preds = %34
  %81 = load i32, i32* @ehci_hdr, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32* @hdr_addr(i32 %81, i32 %82)
  store i32* %83, i32** %14, align 8
  br label %85

84:                                               ; preds = %34
  store i32* @ff_loc, i32** %14, align 8
  br label %85

85:                                               ; preds = %84, %80, %76, %72, %68, %66, %54, %43
  br label %86

86:                                               ; preds = %85, %33
  %87 = load i32, i32* %12, align 4
  switch i32 %87, label %100 [
    i32 1, label %88
    i32 2, label %92
    i32 4, label %96
  ]

88:                                               ; preds = %86
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  br label %102

92:                                               ; preds = %86
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %13, align 8
  store i32 %94, i32* %95, align 4
  br label %102

96:                                               ; preds = %86
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %13, align 8
  store i32 %98, i32* %99, align 4
  br label %102

100:                                              ; preds = %86
  %101 = call i32 (...) @BUG()
  br label %102

102:                                              ; preds = %100, %96, %92, %88
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %102, %21
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @is_simulated(i32, i32) #1

declare dso_local i32* @hdr_addr(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
