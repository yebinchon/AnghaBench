; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { i32, %struct.TYPE_2__*, %struct.sdio_func* }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32 }
%struct.sdio_func = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Error: card or function is NULL!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"sdio_enable_func() failed: ret=%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@btmrvl_sdio_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"sdio_claim_irq failed: ret=%d\00", align 1
@SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot set SDIO block size\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"SDIO FUNC%d IO port: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*)* @btmrvl_sdio_register_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_register_dev(%struct.btmrvl_sdio_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btmrvl_sdio_card*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %3, align 8
  %7 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %8 = icmp ne %struct.btmrvl_sdio_card* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %11 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %10, i32 0, i32 2
  %12 = load %struct.sdio_func*, %struct.sdio_func** %11, align 8
  %13 = icmp ne %struct.sdio_func* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9, %1
  %15 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %196

18:                                               ; preds = %9
  %19 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %20 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %19, i32 0, i32 2
  %21 = load %struct.sdio_func*, %struct.sdio_func** %20, align 8
  store %struct.sdio_func* %21, %struct.sdio_func** %4, align 8
  %22 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %23 = call i32 @sdio_claim_host(%struct.sdio_func* %22)
  %24 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %25 = call i32 @sdio_enable_func(%struct.sdio_func* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %193

33:                                               ; preds = %18
  %34 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %35 = load i32, i32* @btmrvl_sdio_interrupt, align 4
  %36 = call i32 @sdio_claim_irq(%struct.sdio_func* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %190

44:                                               ; preds = %33
  %45 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %46 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %45, i32 0, i32 2
  %47 = load %struct.sdio_func*, %struct.sdio_func** %46, align 8
  %48 = load i32, i32* @SDIO_BLOCK_SIZE, align 4
  %49 = call i32 @sdio_set_block_size(%struct.sdio_func* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %187

56:                                               ; preds = %44
  %57 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %58 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %59 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sdio_readb(%struct.sdio_func* %57, i32 %62, i32* %6)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %187

69:                                               ; preds = %56
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %72 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %74 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %75 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sdio_readb(%struct.sdio_func* %73, i32 %78, i32* %6)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %187

85:                                               ; preds = %69
  %86 = load i32, i32* %5, align 4
  %87 = shl i32 %86, 8
  %88 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %89 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %93 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %94 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @sdio_readb(%struct.sdio_func* %92, i32 %97, i32* %6)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %85
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %187

104:                                              ; preds = %85
  %105 = load i32, i32* %5, align 4
  %106 = shl i32 %105, 16
  %107 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %108 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %112 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %115 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %119 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %181

124:                                              ; preds = %104
  %125 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %126 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %127 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @sdio_readb(%struct.sdio_func* %125, i32 %130, i32* %6)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %187

137:                                              ; preds = %124
  %138 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = or i32 %139, 63
  %141 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %142 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @sdio_writeb(%struct.sdio_func* %138, i32 %140, i32 %145, i32* %6)
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %137
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %187

152:                                              ; preds = %137
  %153 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %154 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %155 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %154, i32 0, i32 1
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @sdio_readb(%struct.sdio_func* %153, i32 %158, i32* %6)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %152
  %163 = load i32, i32* @EIO, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %187

165:                                              ; preds = %152
  %166 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %167 = load i32, i32* %5, align 4
  %168 = or i32 %167, 16
  %169 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %170 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %169, i32 0, i32 1
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @sdio_writeb(%struct.sdio_func* %166, i32 %168, i32 %173, i32* %6)
  %175 = load i32, i32* %6, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %165
  %178 = load i32, i32* @EIO, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %6, align 4
  br label %187

180:                                              ; preds = %165
  br label %181

181:                                              ; preds = %180, %104
  %182 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %183 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %184 = call i32 @sdio_set_drvdata(%struct.sdio_func* %182, %struct.btmrvl_sdio_card* %183)
  %185 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %186 = call i32 @sdio_release_host(%struct.sdio_func* %185)
  store i32 0, i32* %2, align 4
  br label %198

187:                                              ; preds = %177, %162, %149, %134, %101, %82, %66, %52
  %188 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %189 = call i32 @sdio_release_irq(%struct.sdio_func* %188)
  br label %190

190:                                              ; preds = %187, %39
  %191 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %192 = call i32 @sdio_disable_func(%struct.sdio_func* %191)
  br label %193

193:                                              ; preds = %190, %28
  %194 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %195 = call i32 @sdio_release_host(%struct.sdio_func* %194)
  br label %196

196:                                              ; preds = %193, %14
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %196, %181
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_irq(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_readb(%struct.sdio_func*, i32, i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @sdio_writeb(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.btmrvl_sdio_card*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
