; ModuleID = '/home/carl/AnghaBench/libevent/extr_evmap.c_evmap_io_del_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evmap.c_evmap_io_del_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.event_io_map, %struct.eventop* }
%struct.event_io_map = type { i64 }
%struct.eventop = type { i32 (%struct.event_base.0*, i64, i16, i16, i8*)* }
%struct.event_base.0 = type opaque
%struct.event = type { i64, i16 }
%struct.evmap_io = type { i32, i32, i32 }

@evmap_io = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@EV_CLOSED = common dso_local global i16 0, align 2
@EV_ET = common dso_local global i16 0, align 2
@ev_io_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evmap_io_del_(%struct.event_base* %0, i64 %1, %struct.event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.event*, align 8
  %8 = alloca %struct.eventop*, align 8
  %9 = alloca %struct.event_io_map*, align 8
  %10 = alloca %struct.evmap_io*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i8*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.event* %2, %struct.event** %7, align 8
  %18 = load %struct.event_base*, %struct.event_base** %5, align 8
  %19 = getelementptr inbounds %struct.event_base, %struct.event_base* %18, i32 0, i32 1
  %20 = load %struct.eventop*, %struct.eventop** %19, align 8
  store %struct.eventop* %20, %struct.eventop** %8, align 8
  %21 = load %struct.event_base*, %struct.event_base** %5, align 8
  %22 = getelementptr inbounds %struct.event_base, %struct.event_base* %21, i32 0, i32 0
  store %struct.event_io_map* %22, %struct.event_io_map** %9, align 8
  store i32 0, i32* %14, align 4
  store i16 0, i16* %15, align 2
  store i16 0, i16* %16, align 2
  %23 = load i64, i64* %6, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %206

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.event*, %struct.event** %7, align 8
  %29 = getelementptr inbounds %struct.event, %struct.event* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @EVUTIL_ASSERT(i32 %32)
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.event_io_map*, %struct.event_io_map** %9, align 8
  %36 = getelementptr inbounds %struct.event_io_map, %struct.event_io_map* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %206

40:                                               ; preds = %26
  %41 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %42 = load %struct.event_io_map*, %struct.event_io_map** %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @evmap_io, align 4
  %45 = call i32 @GET_IO_SLOT(%struct.evmap_io* %41, %struct.event_io_map* %42, i64 %43, i32 %44)
  %46 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %47 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %50 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %53 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %40
  %58 = load i16, i16* @EV_READ, align 2
  %59 = sext i16 %58 to i32
  %60 = load i16, i16* %16, align 2
  %61 = sext i16 %60 to i32
  %62 = or i32 %61, %59
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %16, align 2
  br label %64

64:                                               ; preds = %57, %40
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i16, i16* @EV_WRITE, align 2
  %69 = sext i16 %68 to i32
  %70 = load i16, i16* %16, align 2
  %71 = sext i16 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %16, align 2
  br label %74

74:                                               ; preds = %67, %64
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i16, i16* @EV_CLOSED, align 2
  %79 = sext i16 %78 to i32
  %80 = load i16, i16* %16, align 2
  %81 = sext i16 %80 to i32
  %82 = or i32 %81, %79
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %16, align 2
  br label %84

84:                                               ; preds = %77, %74
  %85 = load %struct.event*, %struct.event** %7, align 8
  %86 = getelementptr inbounds %struct.event, %struct.event* %85, i32 0, i32 1
  %87 = load i16, i16* %86, align 8
  %88 = sext i16 %87 to i32
  %89 = load i16, i16* @EV_READ, align 2
  %90 = sext i16 %89 to i32
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %84
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %11, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i16, i16* @EV_READ, align 2
  %99 = sext i16 %98 to i32
  %100 = load i16, i16* %15, align 2
  %101 = sext i16 %100 to i32
  %102 = or i32 %101, %99
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %15, align 2
  br label %104

104:                                              ; preds = %97, %93
  %105 = load i32, i32* %11, align 4
  %106 = icmp sge i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @EVUTIL_ASSERT(i32 %107)
  br label %109

109:                                              ; preds = %104, %84
  %110 = load %struct.event*, %struct.event** %7, align 8
  %111 = getelementptr inbounds %struct.event, %struct.event* %110, i32 0, i32 1
  %112 = load i16, i16* %111, align 8
  %113 = sext i16 %112 to i32
  %114 = load i16, i16* @EV_WRITE, align 2
  %115 = sext i16 %114 to i32
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %109
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %12, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load i16, i16* @EV_WRITE, align 2
  %124 = sext i16 %123 to i32
  %125 = load i16, i16* %15, align 2
  %126 = sext i16 %125 to i32
  %127 = or i32 %126, %124
  %128 = trunc i32 %127 to i16
  store i16 %128, i16* %15, align 2
  br label %129

129:                                              ; preds = %122, %118
  %130 = load i32, i32* %12, align 4
  %131 = icmp sge i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @EVUTIL_ASSERT(i32 %132)
  br label %134

134:                                              ; preds = %129, %109
  %135 = load %struct.event*, %struct.event** %7, align 8
  %136 = getelementptr inbounds %struct.event, %struct.event* %135, i32 0, i32 1
  %137 = load i16, i16* %136, align 8
  %138 = sext i16 %137 to i32
  %139 = load i16, i16* @EV_CLOSED, align 2
  %140 = sext i16 %139 to i32
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %134
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %13, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i16, i16* @EV_CLOSED, align 2
  %149 = sext i16 %148 to i32
  %150 = load i16, i16* %15, align 2
  %151 = sext i16 %150 to i32
  %152 = or i32 %151, %149
  %153 = trunc i32 %152 to i16
  store i16 %153, i16* %15, align 2
  br label %154

154:                                              ; preds = %147, %143
  %155 = load i32, i32* %13, align 4
  %156 = icmp sge i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @EVUTIL_ASSERT(i32 %157)
  br label %159

159:                                              ; preds = %154, %134
  %160 = load i16, i16* %15, align 2
  %161 = icmp ne i16 %160, 0
  br i1 %161, label %162, label %192

162:                                              ; preds = %159
  %163 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %164 = bitcast %struct.evmap_io* %163 to i8*
  %165 = getelementptr inbounds i8, i8* %164, i64 12
  store i8* %165, i8** %17, align 8
  %166 = load %struct.eventop*, %struct.eventop** %8, align 8
  %167 = getelementptr inbounds %struct.eventop, %struct.eventop* %166, i32 0, i32 0
  %168 = load i32 (%struct.event_base.0*, i64, i16, i16, i8*)*, i32 (%struct.event_base.0*, i64, i16, i16, i8*)** %167, align 8
  %169 = load %struct.event_base*, %struct.event_base** %5, align 8
  %170 = bitcast %struct.event_base* %169 to %struct.event_base.0*
  %171 = load %struct.event*, %struct.event** %7, align 8
  %172 = getelementptr inbounds %struct.event, %struct.event* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i16, i16* %16, align 2
  %175 = load %struct.event*, %struct.event** %7, align 8
  %176 = getelementptr inbounds %struct.event, %struct.event* %175, i32 0, i32 1
  %177 = load i16, i16* %176, align 8
  %178 = sext i16 %177 to i32
  %179 = load i16, i16* @EV_ET, align 2
  %180 = sext i16 %179 to i32
  %181 = and i32 %178, %180
  %182 = load i16, i16* %15, align 2
  %183 = sext i16 %182 to i32
  %184 = or i32 %181, %183
  %185 = trunc i32 %184 to i16
  %186 = load i8*, i8** %17, align 8
  %187 = call i32 %168(%struct.event_base.0* %170, i64 %173, i16 signext %174, i16 signext %185, i8* %186)
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %190

189:                                              ; preds = %162
  store i32 -1, i32* %14, align 4
  br label %191

190:                                              ; preds = %162
  store i32 1, i32* %14, align 4
  br label %191

191:                                              ; preds = %190, %189
  br label %192

192:                                              ; preds = %191, %159
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %195 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %12, align 4
  %197 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %198 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load %struct.evmap_io*, %struct.evmap_io** %10, align 8
  %201 = getelementptr inbounds %struct.evmap_io, %struct.evmap_io* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  %202 = load %struct.event*, %struct.event** %7, align 8
  %203 = load i32, i32* @ev_io_next, align 4
  %204 = call i32 @LIST_REMOVE(%struct.event* %202, i32 %203)
  %205 = load i32, i32* %14, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %192, %39, %25
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @GET_IO_SLOT(%struct.evmap_io*, %struct.event_io_map*, i64, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
