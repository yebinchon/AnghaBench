; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_tx_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_horizon.c_tx_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.sk_buff*, %struct.TYPE_13__*, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@ultra = common dso_local global i32 0, align 4
@MAX_PIO_COUNT = common dso_local global i32 0, align 4
@DBG_TX = common dso_local global i32 0, align 4
@DBG_BUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"(pio)\00", align 1
@MAX_TRANSFER_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"(simple or last multi)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"(continuing multi)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"(full region)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"(start multi region)\00", align 1
@MASTER_TX_COUNT_REG_OFF = common dso_local global i32 0, align 4
@DATA_PORT_OFF = common dso_local global i32 0, align 4
@TX_DESCRIPTOR_PORT_OFF = common dso_local global i32 0, align 4
@MASTER_TX_ADDR_REG_OFF = common dso_local global i32 0, align 4
@TX_DESCRIPTOR_REG_OFF = common dso_local global i32 0, align 4
@MASTER_TX_AUTO_APPEND_DESC = common dso_local global i32 0, align 4
@DBG_ERR = common dso_local global i32 0, align 4
@DBG_WARN = common dso_local global i32 0, align 4
@spin_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32)* @tx_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_schedule(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %7, align 4
  br label %10

10:                                               ; preds = %230, %2
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %231

13:                                               ; preds = %10
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %13
  %20 = load i32, i32* @ultra, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 5
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MAX_PIO_COUNT, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %19
  %30 = load i32, i32* @DBG_TX, align 4
  %31 = load i32, i32* @DBG_BUS, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @PRINTD(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MAX_TRANSFER_COUNT, align 4
  %37 = icmp ule i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i32, i32* @DBG_TX, align 4
  %40 = load i32, i32* @DBG_BUS, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @PRINTD(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %38
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %62

51:                                               ; preds = %34
  %52 = load i32, i32* @DBG_TX, align 4
  %53 = load i32, i32* @DBG_BUS, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @PRINTD(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MAX_TRANSFER_COUNT, align 4
  %58 = sub i32 %56, %57
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @MAX_TRANSFER_COUNT, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %51, %48
  br label %144

63:                                               ; preds = %13
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %127

69:                                               ; preds = %63
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %5, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 1
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %83, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sub i32 %86, 1
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @ultra, align 4
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 5
  %93 = call i32 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %69
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @MAX_PIO_COUNT, align 4
  %98 = icmp ule i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95, %69
  %100 = load i32, i32* @DBG_TX, align 4
  %101 = load i32, i32* @DBG_BUS, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @PRINTD(i32 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @MAX_TRANSFER_COUNT, align 4
  %107 = icmp ule i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, i32* @DBG_TX, align 4
  %110 = load i32, i32* @DBG_BUS, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @PRINTD(i32 %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  br label %126

115:                                              ; preds = %104
  %116 = load i32, i32* @DBG_TX, align 4
  %117 = load i32, i32* @DBG_BUS, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @PRINTD(i32 %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @MAX_TRANSFER_COUNT, align 4
  %122 = sub i32 %120, %121
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @MAX_TRANSFER_COUNT, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %115, %108
  br label %143

127:                                              ; preds = %63
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 3
  %130 = load %struct.sk_buff*, %struct.sk_buff** %129, align 8
  store %struct.sk_buff* %130, %struct.sk_buff** %9, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %132, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = call %struct.TYPE_12__* @ATM_SKB(%struct.sk_buff* %133)
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = call i32 @atomic_inc(i32* %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %142 = call i32 @hrz_kfree_skb(%struct.sk_buff* %141)
  br label %143

143:                                              ; preds = %127, %126
  br label %144

144:                                              ; preds = %143, %62
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %218

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %147
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = load i32, i32* @MASTER_TX_COUNT_REG_OFF, align 4
  %156 = call i32 @wr_regl(%struct.TYPE_16__* %154, i32 %155, i32 0)
  br label %157

157:                                              ; preds = %153, %150
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %159 = load i32, i32* @DATA_PORT_OFF, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @wrs_regb(%struct.TYPE_16__* %158, i32 %159, i32 %162, i32 %163)
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %157
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = load i32, i32* @TX_DESCRIPTOR_PORT_OFF, align 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 3
  %172 = load %struct.sk_buff*, %struct.sk_buff** %171, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @cpu_to_be32(i32 %174)
  %176 = call i32 @wr_regl(%struct.TYPE_16__* %168, i32 %169, i32 %175)
  br label %177

177:                                              ; preds = %167, %157
  br label %212

178:                                              ; preds = %147
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %180 = load i32, i32* @MASTER_TX_ADDR_REG_OFF, align 4
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @virt_to_bus(i32 %183)
  %185 = call i32 @wr_regl(%struct.TYPE_16__* %179, i32 %180, i32 %184)
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %178
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %190 = load i32, i32* @TX_DESCRIPTOR_REG_OFF, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 3
  %193 = load %struct.sk_buff*, %struct.sk_buff** %192, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @cpu_to_be32(i32 %195)
  %197 = call i32 @wr_regl(%struct.TYPE_16__* %189, i32 %190, i32 %196)
  br label %198

198:                                              ; preds = %188, %178
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %200 = load i32, i32* @MASTER_TX_COUNT_REG_OFF, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @MASTER_TX_AUTO_APPEND_DESC, align 4
  %206 = or i32 %204, %205
  br label %209

207:                                              ; preds = %198
  %208 = load i32, i32* %5, align 4
  br label %209

209:                                              ; preds = %207, %203
  %210 = phi i32 [ %206, %203 ], [ %208, %207 ]
  %211 = call i32 @wr_regl(%struct.TYPE_16__* %199, i32 %200, i32 %210)
  br label %212

212:                                              ; preds = %209, %177
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = add i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %230

218:                                              ; preds = %144
  %219 = load i32, i32* %4, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %223 = load i32, i32* @MASTER_TX_COUNT_REG_OFF, align 4
  %224 = call i32 @wr_regl(%struct.TYPE_16__* %222, i32 %223, i32 0)
  br label %225

225:                                              ; preds = %221, %218
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %227 = call i32 @YELLOW_LED_ON(%struct.TYPE_16__* %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %229 = call i32 @tx_release(%struct.TYPE_16__* %228)
  br label %230

230:                                              ; preds = %225, %212
  store i32 0, i32* %4, align 4
  br label %10

231:                                              ; preds = %10
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @PRINTD(i32, i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_12__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @hrz_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wr_regl(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @wrs_regb(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @virt_to_bus(i32) #1

declare dso_local i32 @YELLOW_LED_ON(%struct.TYPE_16__*) #1

declare dso_local i32 @tx_release(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
