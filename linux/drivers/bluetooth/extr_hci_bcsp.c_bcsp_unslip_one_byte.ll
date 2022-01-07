; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_unslip_one_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_unslip_one_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcsp_struct = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@BCSP_W4_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid byte %02x after esc byte\00", align 1
@BCSP_W4_PKT_DELIMITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcsp_struct*, i8)* @bcsp_unslip_one_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcsp_unslip_one_byte(%struct.bcsp_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.bcsp_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.bcsp_struct* %0, %struct.bcsp_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  store i8 -64, i8* %5, align 1
  store i8 -37, i8* %6, align 1
  %7 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %8 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %128 [
    i32 128, label %10
    i32 129, label %48
  ]

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %16 [
    i32 219, label %13
  ]

13:                                               ; preds = %10
  %14 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %15 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %14, i32 0, i32 0
  store i32 129, i32* %15, align 8
  br label %47

16:                                               ; preds = %10
  %17 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %18 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @skb_put_data(%struct.TYPE_3__* %19, i8* %4, i32 1)
  %21 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %22 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 64
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %16
  %31 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %32 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BCSP_W4_CRC, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %38 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %37, i32 0, i32 4
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = call i32 @bcsp_crc_update(i32* %38, i32 %40)
  br label %42

42:                                               ; preds = %36, %30, %16
  %43 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %44 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %13
  br label %128

48:                                               ; preds = %2
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  switch i32 %50, label %113 [
    i32 220, label %51
    i32 221, label %82
  ]

51:                                               ; preds = %48
  %52 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %53 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i32 @skb_put_data(%struct.TYPE_3__* %54, i8* %5, i32 1)
  %56 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %57 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 64
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %51
  %66 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %67 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BCSP_W4_CRC, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %73 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %72, i32 0, i32 4
  %74 = call i32 @bcsp_crc_update(i32* %73, i32 192)
  br label %75

75:                                               ; preds = %71, %65, %51
  %76 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %77 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %76, i32 0, i32 0
  store i32 128, i32* %77, align 8
  %78 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %79 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %79, align 4
  br label %127

82:                                               ; preds = %48
  %83 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %84 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = call i32 @skb_put_data(%struct.TYPE_3__* %85, i8* %6, i32 1)
  %87 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %88 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %87, i32 0, i32 3
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 64
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %82
  %97 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %98 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @BCSP_W4_CRC, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %104 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %103, i32 0, i32 4
  %105 = call i32 @bcsp_crc_update(i32* %104, i32 219)
  br label %106

106:                                              ; preds = %102, %96, %82
  %107 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %108 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %107, i32 0, i32 0
  store i32 128, i32* %108, align 8
  %109 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %110 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %110, align 4
  br label %127

113:                                              ; preds = %48
  %114 = load i8, i8* %4, align 1
  %115 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 zeroext %114)
  %116 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %117 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %116, i32 0, i32 3
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = call i32 @kfree_skb(%struct.TYPE_3__* %118)
  %120 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %121 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %120, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %121, align 8
  %122 = load i32, i32* @BCSP_W4_PKT_DELIMITER, align 4
  %123 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %124 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %126 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  br label %127

127:                                              ; preds = %113, %106, %75
  br label %128

128:                                              ; preds = %127, %2, %47
  ret void
}

declare dso_local i32 @skb_put_data(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @bcsp_crc_update(i32*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i8 zeroext) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
