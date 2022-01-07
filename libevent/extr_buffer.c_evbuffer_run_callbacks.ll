; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_run_callbacks.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_run_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, i64, i32, i64 }
%struct.evbuffer_cb_entry = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.evbuffer.0*, %struct.evbuffer_cb_info*, i32)*, i32 (%struct.evbuffer.1*, i64, i64, i32)* }
%struct.evbuffer.0 = type opaque
%struct.evbuffer_cb_info = type { i64, i64, i64 }
%struct.evbuffer.1 = type opaque

@EVBUFFER_CB_NODEFER = common dso_local global i32 0, align 4
@EVBUFFER_CB_ENABLED = common dso_local global i32 0, align 4
@EVBUFFER_CB_OBSOLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, i32)* @evbuffer_run_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evbuffer_run_callbacks(%struct.evbuffer* %0, i32 %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer_cb_entry*, align 8
  %6 = alloca %struct.evbuffer_cb_entry*, align 8
  %7 = alloca %struct.evbuffer_cb_info, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @EVBUFFER_CB_NODEFER, align 4
  %16 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  store i32 %18, i32* %10, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %21 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32, i32* @EVBUFFER_CB_NODEFER, align 4
  %26 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @EVBUFFER_CB_NODEFER, align 4
  %29 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @EVBUFFER_CB_ENABLED, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %24
  br label %35

35:                                               ; preds = %34, %14
  %36 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %37 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %36)
  %38 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %39 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %38, i32 0, i32 3
  %40 = call i64 @LIST_EMPTY(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %44 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %46 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %144

47:                                               ; preds = %35
  %48 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %49 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %54 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %144

58:                                               ; preds = %52, %47
  %59 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %60 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %64 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %62, %65
  %67 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %68 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %66, %69
  %71 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %7, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %73 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %7, i32 0, i32 1
  store i64 %74, i64* %75, align 8
  %76 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %77 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %7, i32 0, i32 2
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %58
  %83 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %84 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %86 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %58
  %88 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %89 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %88, i32 0, i32 3
  %90 = call %struct.evbuffer_cb_entry* @LIST_FIRST(i32* %89)
  store %struct.evbuffer_cb_entry* %90, %struct.evbuffer_cb_entry** %5, align 8
  br label %91

91:                                               ; preds = %142, %87
  %92 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %5, align 8
  %93 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %94 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %93, i32 0, i32 3
  %95 = call %struct.evbuffer_cb_entry* @LIST_END(i32* %94)
  %96 = icmp ne %struct.evbuffer_cb_entry* %92, %95
  br i1 %96, label %97, label %144

97:                                               ; preds = %91
  %98 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %5, align 8
  %99 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %6, align 8
  %100 = call %struct.evbuffer_cb_entry* @LIST_NEXT(%struct.evbuffer_cb_entry* %98, %struct.evbuffer_cb_entry* %99)
  store %struct.evbuffer_cb_entry* %100, %struct.evbuffer_cb_entry** %6, align 8
  %101 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %5, align 8
  %102 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %142

109:                                              ; preds = %97
  %110 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %5, align 8
  %111 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @EVBUFFER_CB_OBSOLETE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %109
  %117 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %5, align 8
  %118 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32 (%struct.evbuffer.1*, i64, i64, i32)*, i32 (%struct.evbuffer.1*, i64, i64, i32)** %119, align 8
  %121 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %122 = bitcast %struct.evbuffer* %121 to %struct.evbuffer.1*
  %123 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %7, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %5, align 8
  %127 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 %120(%struct.evbuffer.1* %122, i64 %124, i64 %125, i32 %128)
  br label %141

130:                                              ; preds = %109
  %131 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %5, align 8
  %132 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32 (%struct.evbuffer.0*, %struct.evbuffer_cb_info*, i32)*, i32 (%struct.evbuffer.0*, %struct.evbuffer_cb_info*, i32)** %133, align 8
  %135 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %136 = bitcast %struct.evbuffer* %135 to %struct.evbuffer.0*
  %137 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %5, align 8
  %138 = getelementptr inbounds %struct.evbuffer_cb_entry, %struct.evbuffer_cb_entry* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 %134(%struct.evbuffer.0* %136, %struct.evbuffer_cb_info* %7, i32 %139)
  br label %141

141:                                              ; preds = %130, %116
  br label %142

142:                                              ; preds = %141, %108
  %143 = load %struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry** %6, align 8
  store %struct.evbuffer_cb_entry* %143, %struct.evbuffer_cb_entry** %5, align 8
  br label %91

144:                                              ; preds = %42, %57, %91
  ret void
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local %struct.evbuffer_cb_entry* @LIST_FIRST(i32*) #1

declare dso_local %struct.evbuffer_cb_entry* @LIST_END(i32*) #1

declare dso_local %struct.evbuffer_cb_entry* @LIST_NEXT(%struct.evbuffer_cb_entry*, %struct.evbuffer_cb_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
