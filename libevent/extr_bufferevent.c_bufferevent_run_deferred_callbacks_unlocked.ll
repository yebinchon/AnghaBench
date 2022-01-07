; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_run_deferred_callbacks_unlocked.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_run_deferred_callbacks_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_callback = type { i32 }
%struct.bufferevent_private = type { i16, i32, i64, i64, %struct.bufferevent }
%struct.bufferevent = type { i8*, i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)* }

@BEV_EVENT_CONNECTED = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_callback*, i8*)* @bufferevent_run_deferred_callbacks_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_run_deferred_callbacks_unlocked(%struct.event_callback* %0, i8* %1) #0 {
  %3 = alloca %struct.event_callback*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bufferevent_private*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i32 (%struct.bufferevent*, i16, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.bufferevent*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (%struct.bufferevent*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (%struct.bufferevent*, i16, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  store %struct.event_callback* %0, %struct.event_callback** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.bufferevent_private*
  store %struct.bufferevent_private* %18, %struct.bufferevent_private** %5, align 8
  %19 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %20 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %19, i32 0, i32 4
  store %struct.bufferevent* %20, %struct.bufferevent** %6, align 8
  %21 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %22 = call i32 @BEV_LOCK(%struct.bufferevent* %21)
  %23 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %24 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %23, i32 0, i32 0
  %25 = load i16, i16* %24, align 8
  %26 = sext i16 %25 to i32
  %27 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %28 = sext i16 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %2
  %32 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %33 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %32, i32 0, i32 1
  %34 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %33, align 8
  %35 = icmp ne i32 (%struct.bufferevent*, i16, i8*)* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  %37 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %38 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %37, i32 0, i32 1
  %39 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %38, align 8
  store i32 (%struct.bufferevent*, i16, i8*)* %39, i32 (%struct.bufferevent*, i16, i8*)** %7, align 8
  %40 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %41 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  %43 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %44 = sext i16 %43 to i32
  %45 = xor i32 %44, -1
  %46 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %47 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %46, i32 0, i32 0
  %48 = load i16, i16* %47, align 8
  %49 = sext i16 %48 to i32
  %50 = and i32 %49, %45
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %47, align 8
  br label %52

52:                                               ; preds = %36
  %53 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %54 = call i32 (%struct.bufferevent*, ...) bitcast (i32 (...)* @BEV_UNLOCK to i32 (%struct.bufferevent*, ...)*)(%struct.bufferevent* %53)
  %55 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %7, align 8
  %56 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %57 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 %55(%struct.bufferevent* %56, i16 signext %57, i8* %58)
  %60 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %61 = call i32 @BEV_LOCK(%struct.bufferevent* %60)
  br label %62

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %31, %2
  %64 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %65 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %63
  %69 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %70 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %69, i32 0, i32 3
  %71 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %70, align 8
  %72 = icmp ne i32 (%struct.bufferevent*, i8*)* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %68
  %74 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %75 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %74, i32 0, i32 3
  %76 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %75, align 8
  store i32 (%struct.bufferevent*, i8*)* %76, i32 (%struct.bufferevent*, i8*)** %9, align 8
  %77 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %78 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %10, align 8
  %80 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %81 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %73
  %83 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %84 = call i32 (%struct.bufferevent*, ...) bitcast (i32 (...)* @BEV_UNLOCK to i32 (%struct.bufferevent*, ...)*)(%struct.bufferevent* %83)
  %85 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %9, align 8
  %86 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 %85(%struct.bufferevent* %86, i8* %87)
  %89 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %90 = call i32 @BEV_LOCK(%struct.bufferevent* %89)
  br label %91

91:                                               ; preds = %82
  %92 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %93 = call i32 @bufferevent_inbuf_wm_check(%struct.bufferevent* %92)
  br label %94

94:                                               ; preds = %91, %68, %63
  %95 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %96 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %94
  %100 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %101 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %100, i32 0, i32 2
  %102 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %101, align 8
  %103 = icmp ne i32 (%struct.bufferevent*, i8*)* %102, null
  br i1 %103, label %104, label %123

104:                                              ; preds = %99
  %105 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %106 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %105, i32 0, i32 2
  %107 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %106, align 8
  store i32 (%struct.bufferevent*, i8*)* %107, i32 (%struct.bufferevent*, i8*)** %11, align 8
  %108 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %109 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %12, align 8
  %111 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %112 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %104
  %114 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %115 = call i32 (%struct.bufferevent*, ...) bitcast (i32 (...)* @BEV_UNLOCK to i32 (%struct.bufferevent*, ...)*)(%struct.bufferevent* %114)
  %116 = load i32 (%struct.bufferevent*, i8*)*, i32 (%struct.bufferevent*, i8*)** %11, align 8
  %117 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 %116(%struct.bufferevent* %117, i8* %118)
  %120 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %121 = call i32 @BEV_LOCK(%struct.bufferevent* %120)
  br label %122

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %99, %94
  %124 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %125 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %124, i32 0, i32 0
  %126 = load i16, i16* %125, align 8
  %127 = sext i16 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %164

129:                                              ; preds = %123
  %130 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %131 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %130, i32 0, i32 1
  %132 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %131, align 8
  %133 = icmp ne i32 (%struct.bufferevent*, i16, i8*)* %132, null
  br i1 %133, label %134, label %164

134:                                              ; preds = %129
  %135 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %136 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %135, i32 0, i32 1
  %137 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %136, align 8
  store i32 (%struct.bufferevent*, i16, i8*)* %137, i32 (%struct.bufferevent*, i16, i8*)** %13, align 8
  %138 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %139 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %14, align 8
  %141 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %142 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %141, i32 0, i32 0
  %143 = load i16, i16* %142, align 8
  store i16 %143, i16* %15, align 2
  %144 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %145 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %16, align 4
  %147 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %148 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %147, i32 0, i32 0
  store i16 0, i16* %148, align 8
  %149 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %150 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %151)
  br label %153

153:                                              ; preds = %134
  %154 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %155 = call i32 (%struct.bufferevent*, ...) bitcast (i32 (...)* @BEV_UNLOCK to i32 (%struct.bufferevent*, ...)*)(%struct.bufferevent* %154)
  %156 = load i32 (%struct.bufferevent*, i16, i8*)*, i32 (%struct.bufferevent*, i16, i8*)** %13, align 8
  %157 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %158 = load i16, i16* %15, align 2
  %159 = load i8*, i8** %14, align 8
  %160 = call i32 %156(%struct.bufferevent* %157, i16 signext %158, i8* %159)
  %161 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %162 = call i32 @BEV_LOCK(%struct.bufferevent* %161)
  br label %163

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163, %129, %123
  %165 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %166 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %165)
  ret void
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(...) #1

declare dso_local i32 @bufferevent_inbuf_wm_check(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_SET_SOCKET_ERROR(i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
