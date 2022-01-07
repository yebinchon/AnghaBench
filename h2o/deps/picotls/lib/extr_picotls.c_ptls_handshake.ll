; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_handshake.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32** }
%struct.TYPE_19__ = type { i64 }
%struct.st_ptls_record_message_emitter_t = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32 }

@PTLS_STATE_POST_HANDSHAKE_MIN = common dso_local global i32 0, align 4
@PTLS_ERROR_CLASS_PEER_ALERT = common dso_local global i32 0, align 4
@PTLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@PTLS_ERROR_CLASS_SELF_ALERT = common dso_local global i32 0, align 4
@PTLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptls_handshake(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i8* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.st_ptls_record_message_emitter_t, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca [256 x i32], align 16
  %19 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PTLS_STATE_POST_HANDSHAKE_MIN, align 4
  %24 = icmp slt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %29 = call i32 @init_record_message_emmitter(%struct.TYPE_18__* %27, %struct.st_ptls_record_message_emitter_t* %12, %struct.TYPE_19__* %28)
  %30 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %12, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %14, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %63 [
    i32 128, label %38
  ]

38:                                               ; preds = %5
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ true, %38 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %12, i32 0, i32 0
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @send_client_hello(%struct.TYPE_18__* %59, %struct.TYPE_20__* %60, i32* %61, i32* null)
  store i32 %62, i32* %6, align 4
  br label %170

63:                                               ; preds = %5
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %9, align 8
  %66 = bitcast i8* %65 to i32*
  store i32* %66, i32** %15, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i64*, i64** %10, align 8
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %16, align 8
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 0
  %72 = call i32 @ptls_buffer_init(%struct.TYPE_19__* %17, i32* %71, i32 1024)
  store i32 130, i32* %13, align 4
  br label %73

73:                                               ; preds = %82, %64
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 130
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32*, i32** %15, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = icmp ne i32* %77, %78
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i1 [ false, %73 ], [ %79, %76 ]
  br i1 %81, label %82, label %102

82:                                               ; preds = %80
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  store i64 %88, i64* %19, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %12, i32 0, i32 0
  %91 = load i32*, i32** %15, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @handle_input(%struct.TYPE_18__* %89, %struct.TYPE_20__* %90, %struct.TYPE_19__* %17, i32* %91, i64* %19, i32* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i64, i64* %19, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 %94
  store i32* %96, i32** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  br label %73

102:                                              ; preds = %80
  %103 = call i32 @ptls_buffer_dispose(%struct.TYPE_19__* %17)
  %104 = load i32, i32* %13, align 4
  switch i32 %104, label %106 [
    i32 0, label %105
    i32 130, label %105
    i32 129, label %105
  ]

105:                                              ; preds = %102, %102, %102
  br label %159

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %12, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %14, align 8
  %114 = add i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %12, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = sub i64 %120, %121
  %123 = call i32 @ptls_clear_memory(i32 %115, i64 %122)
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %12, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  store i64 %124, i64* %128, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @PTLS_ERROR_GET_CLASS(i32 %129)
  %131 = load i32, i32* @PTLS_ERROR_CLASS_PEER_ALERT, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %106
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %135 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %12, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = load i32, i32* @PTLS_ALERT_LEVEL_FATAL, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @PTLS_ERROR_GET_CLASS(i32 %139)
  %141 = load i32, i32* @PTLS_ERROR_CLASS_SELF_ALERT, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* %13, align 4
  br label %147

145:                                              ; preds = %133
  %146 = load i32, i32* @PTLS_ALERT_INTERNAL_ERROR, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = call i32 @ptls_send_alert(%struct.TYPE_18__* %134, %struct.TYPE_21__* %137, i32 %138, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i64, i64* %14, align 8
  %153 = getelementptr inbounds %struct.st_ptls_record_message_emitter_t, %struct.st_ptls_record_message_emitter_t* %12, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  store i64 %152, i64* %156, align 8
  br label %157

157:                                              ; preds = %151, %147
  br label %158

158:                                              ; preds = %157, %106
  br label %159

159:                                              ; preds = %158, %105
  %160 = load i32*, i32** %16, align 8
  %161 = load i32*, i32** %15, align 8
  %162 = ptrtoint i32* %160 to i64
  %163 = ptrtoint i32* %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 4
  %166 = load i64*, i64** %10, align 8
  %167 = load i64, i64* %166, align 8
  %168 = sub i64 %167, %165
  store i64 %168, i64* %166, align 8
  %169 = load i32, i32* %13, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %159, %45
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @init_record_message_emmitter(%struct.TYPE_18__*, %struct.st_ptls_record_message_emitter_t*, %struct.TYPE_19__*) #1

declare dso_local i32 @send_client_hello(%struct.TYPE_18__*, %struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @handle_input(%struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32*, i64*, i32*) #1

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_19__*) #1

declare dso_local i32 @ptls_clear_memory(i32, i64) #1

declare dso_local i32 @PTLS_ERROR_GET_CLASS(i32) #1

declare dso_local i32 @ptls_send_alert(%struct.TYPE_18__*, %struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
