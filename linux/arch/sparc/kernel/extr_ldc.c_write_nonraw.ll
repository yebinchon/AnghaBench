; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_write_nonraw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_write_nonraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i64, i32, i8*, %struct.TYPE_4__, %struct.ldc_packet*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ldc_packet = type { i32, i8*, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32* }

@EBUSY = common dso_local global i32 0, align 4
@LDC_CHANNEL_UP = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@LDC_PACKET_SIZE = common dso_local global i64 0, align 8
@LDC_MODE_UNRELIABLE = common dso_local global i64 0, align 8
@LDC_DATA = common dso_local global i32 0, align 4
@LDC_INFO = common dso_local global i32 0, align 4
@LDC_LEN = common dso_local global i32 0, align 4
@LDC_START = common dso_local global i32 0, align 4
@LDC_STOP = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SENT DATA [%02x:%02x:%02x:%02x:%08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, i8*, i32)* @write_nonraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_nonraw(%struct.ldc_channel* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ldc_packet*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %17 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %20 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %19, i32 0, i32 6
  %21 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %22 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %21, i32 0, i32 0
  %23 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %24 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %23, i32 0, i32 1
  %25 = call i64 @sun4v_ldc_tx_get_state(i32 %18, i32* %20, i64* %22, i64* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %187

33:                                               ; preds = %3
  %34 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %35 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LDC_CHANNEL_UP, align 8
  %38 = icmp ne i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %44 = call i32 @LDC_ABORT(%struct.ldc_channel* %43)
  store i32 %44, i32* %4, align 4
  br label %187

45:                                               ; preds = %33
  %46 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @tx_has_space_for(%struct.ldc_channel* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %187

53:                                               ; preds = %45
  %54 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %55 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  store i32 0, i32* %10, align 4
  %57 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %58 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %134, %53
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %174

64:                                               ; preds = %60
  %65 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %66 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %65, i32 0, i32 5
  %67 = load %struct.ldc_packet*, %struct.ldc_packet** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @LDC_PACKET_SIZE, align 8
  %70 = udiv i64 %68, %69
  %71 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %67, i64 %70
  store %struct.ldc_packet* %71, %struct.ldc_packet** %13, align 8
  %72 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %73 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LDC_MODE_UNRELIABLE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %64
  %79 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %80 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  br label %89

83:                                               ; preds = %64
  %84 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %85 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  br label %89

89:                                               ; preds = %83, %78
  %90 = phi i32* [ %82, %78 ], [ %88, %83 ]
  store i32* %90, i32** %14, align 8
  %91 = load i32, i32* @LDC_DATA, align 4
  %92 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %93 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @LDC_INFO, align 4
  %95 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %96 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %98 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub i32 %99, %100
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %104 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %89
  %108 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %109 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %107, %89
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @LDC_LEN, align 4
  %114 = icmp sgt i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @BUG_ON(i32 %115)
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* @LDC_START, align 4
  br label %123

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  %125 = or i32 %117, %124
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %10, align 4
  %129 = sub i32 %127, %128
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @LDC_STOP, align 4
  br label %134

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %131
  %135 = phi i32 [ %132, %131 ], [ 0, %133 ]
  %136 = or i32 %125, %135
  %137 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %138 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %11, align 8
  %141 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %142 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* @DATA, align 4
  %144 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %145 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %148 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %151 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %154 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %157 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @ldcdbg(i32 %143, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %149, i64 %152, i32 %155, i8* %158)
  %160 = load i32*, i32** %14, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @memcpy(i32* %160, i8* %161, i32 %162)
  %164 = load i32, i32* %15, align 4
  %165 = load i8*, i8** %6, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr i8, i8* %165, i64 %166
  store i8* %167, i8** %6, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %10, align 4
  %170 = add i32 %169, %168
  store i32 %170, i32* %10, align 4
  %171 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %172 = load i64, i64* %9, align 8
  %173 = call i64 @tx_advance(%struct.ldc_channel* %171, i64 %172)
  store i64 %173, i64* %9, align 8
  br label %60

174:                                              ; preds = %60
  %175 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @set_tx_tail(%struct.ldc_channel* %175, i64 %176)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %174
  %181 = load i8*, i8** %11, align 8
  %182 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %183 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %180, %174
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %185, %50, %42, %30
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i64 @sun4v_ldc_tx_get_state(i32, i32*, i64*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @LDC_ABORT(%struct.ldc_channel*) #1

declare dso_local i32 @tx_has_space_for(%struct.ldc_channel*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ldcdbg(i32, i8*, i32, i32, i64, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @tx_advance(%struct.ldc_channel*, i64) #1

declare dso_local i32 @set_tx_tail(%struct.ldc_channel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
