; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_dreg_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_dreg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, %struct.vio_dring_state*, i32, i32 }
%struct.vio_dring_state = type { i32, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.vio_dring_register = type { i32, i32, %struct.TYPE_4__, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"GOT DRING_REG INFO ident[%llx] ndesc[%u] dsz[%u] opt[0x%x] ncookies[%u]\0A\00", align 1
@VIO_DR_STATE_RXREQ = common dso_local global i32 0, align 4
@VIO_DR_STATE_RXREG = common dso_local global i32 0, align 4
@VIO_TX_DRING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VIO_DRIVER_RX_RING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"DRING COOKIE(%d) [%016llx:%016llx]\0A\00", align 1
@VIO_SUBTYPE_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"SEND DRING_REG ACK ident[%llx] ndesc[%u] dsz[%u] opt[0x%x] ncookies[%u]\0A\00", align 1
@VIO_SUBTYPE_NACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"SEND DRING_REG NACK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_dring_register*)* @process_dreg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_dreg_info(%struct.vio_driver_state* %0, %struct.vio_dring_register* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_dring_register*, align 8
  %6 = alloca %struct.vio_dring_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_dring_register* %1, %struct.vio_dring_register** %5, align 8
  %9 = load i32, i32* @HS, align 4
  %10 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %11 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %14 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %17 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %20 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %23 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @viodbg(i32 %9, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %12, i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %27 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VIO_DR_STATE_RXREQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %191

33:                                               ; preds = %2
  %34 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %35 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VIO_DR_STATE_RXREG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %191

41:                                               ; preds = %33
  %42 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %43 = call i64 @vio_version_after_eq(%struct.vio_driver_state* %42, i32 1, i32 6)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %47 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VIO_TX_DRING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %191

53:                                               ; preds = %45
  %54 = load i32, i32* @VIO_TX_DRING, align 4
  %55 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %56 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %41
  %58 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %59 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %63 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call i32 @kzalloc(i32 %64, i32 %65)
  %67 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %68 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %70 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %57
  br label %191

74:                                               ; preds = %57
  %75 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %76 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %79 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %81 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %80, i32 0, i32 1
  %82 = load %struct.vio_dring_state*, %struct.vio_dring_state** %81, align 8
  %83 = load i64, i64* @VIO_DRIVER_RX_RING, align 8
  %84 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %82, i64 %83
  store %struct.vio_dring_state* %84, %struct.vio_dring_state** %6, align 8
  %85 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %86 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %89 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %91 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %94 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %96 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %99 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %140, %74
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %103 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %143

106:                                              ; preds = %100
  %107 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %108 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %107, i32 0, i32 2
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %114 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %113, i32 0, i32 6
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = bitcast %struct.TYPE_3__* %112 to i8*
  %120 = bitcast %struct.TYPE_3__* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 16, i1 false)
  %121 = load i32, i32* @HS, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %124 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %123, i32 0, i32 6
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %132 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %131, i32 0, i32 6
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i32, i8*, ...) @viodbg(i32 %121, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %122, i64 %130, i64 %138)
  br label %140

140:                                              ; preds = %106
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %100

143:                                              ; preds = %100
  %144 = load i32, i32* @VIO_SUBTYPE_ACK, align 4
  %145 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %146 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %149 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %153 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %152, i32 0, i32 5
  store i64 %151, i64* %153, align 8
  %154 = load i32, i32* @HS, align 4
  %155 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %156 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %159 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %162 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %165 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %168 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, ...) @viodbg(i32 %154, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i64 %157, i32 %160, i32 %163, i32 %166, i32 %169)
  %171 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %172 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = add i64 40, %175
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %8, align 4
  %178 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %179 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %180 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %179, i32 0, i32 2
  %181 = load i32, i32* %8, align 4
  %182 = call i64 @send_ctrl(%struct.vio_driver_state* %178, %struct.TYPE_4__* %180, i32 %181)
  %183 = icmp slt i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %143
  br label %191

185:                                              ; preds = %143
  %186 = load i32, i32* @VIO_DR_STATE_RXREG, align 4
  %187 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %188 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  store i32 0, i32* %3, align 4
  br label %204

191:                                              ; preds = %184, %73, %52, %40, %32
  %192 = load i32, i32* @VIO_SUBTYPE_NACK, align 4
  %193 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %194 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 8
  %196 = load i32, i32* @HS, align 4
  %197 = call i32 (i32, i8*, ...) @viodbg(i32 %196, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %198 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %199 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %200 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %199, i32 0, i32 2
  %201 = call i64 @send_ctrl(%struct.vio_driver_state* %198, %struct.TYPE_4__* %200, i32 40)
  %202 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %203 = call i32 @handshake_failure(%struct.vio_driver_state* %202)
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %191, %185
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @viodbg(i32, i8*, ...) #1

declare dso_local i64 @vio_version_after_eq(%struct.vio_driver_state*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @send_ctrl(%struct.vio_driver_state*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
