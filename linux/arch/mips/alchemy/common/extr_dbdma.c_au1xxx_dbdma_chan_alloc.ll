; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_dbdma.c_au1xxx_dbdma_chan_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_dbdma.c_au1xxx_dbdma_chan_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, void (i32, i8*)*, i8*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32 }

@dbdma_initialized = common dso_local global i32 0, align 4
@au1xxx_dbdma_spin_lock = common dso_local global i32 0, align 4
@DEV_FLAGS_INUSE = common dso_local global i32 0, align 4
@DEV_FLAGS_ANYUSE = common dso_local global i32 0, align 4
@NUM_DBDMA_CHANS = common dso_local global i32 0, align 4
@chan_tab_ptr = common dso_local global %struct.TYPE_9__** null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AU1550_DBDMA_PHYS_ADDR = common dso_local global i32 0, align 4
@DDMA_CFG_SED = common dso_local global i32 0, align 4
@DDMA_CFG_SP = common dso_local global i32 0, align 4
@DDMA_CFG_DED = common dso_local global i32 0, align 4
@DDMA_CFG_DP = common dso_local global i32 0, align 4
@DEV_FLAGS_SYNC = common dso_local global i32 0, align 4
@DDMA_CFG_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au1xxx_dbdma_chan_alloc(i32 %0, i32 %1, void (i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca void (i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store void (i32, i8*)* %2, void (i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load i32, i32* @dbdma_initialized, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %233

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.TYPE_8__* @find_dbdev_id(i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %15, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %233

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.TYPE_8__* @find_dbdev_id(i32 %29)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %16, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %32 = icmp eq %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %233

34:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_lock_irqsave(i32* @au1xxx_dbdma_spin_lock, i64 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DEV_FLAGS_INUSE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DEV_FLAGS_ANYUSE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %43, %34
  %51 = load i32, i32* @DEV_FLAGS_INUSE, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @DEV_FLAGS_INUSE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %50
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DEV_FLAGS_ANYUSE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62, %50
  %70 = load i32, i32* @DEV_FLAGS_INUSE, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %84

75:                                               ; preds = %62
  %76 = load i32, i32* @DEV_FLAGS_INUSE, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %75, %69
  br label %88

85:                                               ; preds = %43
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %85, %84
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* @au1xxx_dbdma_spin_lock, i64 %89)
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %233

94:                                               ; preds = %88
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %17, align 8
  store i32 0, i32* %12, align 4
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @spin_lock_irqsave(i32* @au1xxx_dbdma_spin_lock, i64 %95)
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %117, %94
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @NUM_DBDMA_CHANS, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @chan_tab_ptr, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %102, i64 %104
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = icmp eq %struct.TYPE_9__* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load i32, i32* @GFP_ATOMIC, align 4
  %110 = call %struct.TYPE_9__* @kmalloc(i32 48, i32 %109)
  store %struct.TYPE_9__* %110, %struct.TYPE_9__** %17, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %112 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @chan_tab_ptr, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %112, i64 %114
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %115, align 8
  br label %120

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %97

120:                                              ; preds = %108, %97
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* @au1xxx_dbdma_spin_lock, i64 %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %124 = icmp ne %struct.TYPE_9__* %123, null
  br i1 %124, label %125, label %220

125:                                              ; preds = %120
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %127 = call i32 @memset(%struct.TYPE_9__* %126, i32 0, i32 48)
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %12, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @AU1550_DBDMA_PHYS_ADDR, align 4
  %132 = call i32 @KSEG1ADDR(i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %12, align 4
  %134 = mul nsw i32 256, %133
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to %struct.TYPE_10__*
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 5
  store %struct.TYPE_10__* %139, %struct.TYPE_10__** %141, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %144, %struct.TYPE_10__** %18, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 4
  store %struct.TYPE_8__* %145, %struct.TYPE_8__** %147, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %150, align 8
  %151 = load void (i32, i8*)*, void (i32, i8*)** %8, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store void (i32, i8*)* %151, void (i32, i8*)** %153, align 8
  %154 = load i8*, i8** %9, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  store i32 0, i32* %14, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %125
  %162 = load i32, i32* @DDMA_CFG_SED, align 4
  %163 = load i32, i32* %14, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %161, %125
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32, i32* @DDMA_CFG_SP, align 4
  %172 = load i32, i32* %14, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %170, %165
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load i32, i32* @DDMA_CFG_DED, align 4
  %181 = load i32, i32* %14, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %14, align 4
  br label %183

183:                                              ; preds = %179, %174
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* @DDMA_CFG_DP, align 4
  %190 = load i32, i32* %14, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %14, align 4
  br label %192

192:                                              ; preds = %188, %183
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @DEV_FLAGS_SYNC, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %192
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @DEV_FLAGS_SYNC, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %199, %192
  %207 = load i32, i32* @DDMA_CFG_SYNC, align 4
  %208 = load i32, i32* %14, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %14, align 4
  br label %210

210:                                              ; preds = %206, %199
  %211 = load i32, i32* %14, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 4
  %214 = call i32 (...) @wmb()
  %215 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @chan_tab_ptr, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %215, i64 %217
  %219 = ptrtoint %struct.TYPE_9__** %218 to i32
  store i32 %219, i32* %5, align 4
  br label %233

220:                                              ; preds = %120
  %221 = load i32, i32* @DEV_FLAGS_INUSE, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load i32, i32* @DEV_FLAGS_INUSE, align 4
  %228 = xor i32 %227, -1
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %231, %228
  store i32 %232, i32* %230, align 8
  store i32 0, i32* %5, align 4
  br label %233

233:                                              ; preds = %220, %210, %93, %33, %27, %21
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local %struct.TYPE_8__* @find_dbdev_id(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_9__* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @KSEG1ADDR(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
