; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_receive.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_quicly_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_94__ = type { %struct.TYPE_90__, %struct.TYPE_87__, %struct.TYPE_83__, %struct.TYPE_79__*, %struct.TYPE_75__*, %struct.TYPE_69__*, %struct.TYPE_98__, %struct.TYPE_97__ }
%struct.TYPE_90__ = type { %struct.TYPE_88__, i32, i32, i32 }
%struct.TYPE_88__ = type { i32 }
%struct.TYPE_87__ = type { i32, %struct.TYPE_86__, %struct.TYPE_85__, %struct.TYPE_72__, i32 }
%struct.TYPE_86__ = type { %struct.TYPE_99__ }
%struct.TYPE_99__ = type { %struct.TYPE_82__ }
%struct.TYPE_82__ = type { i32 }
%struct.TYPE_85__ = type { %struct.TYPE_84__, %struct.TYPE_74__, %struct.TYPE_98__ }
%struct.TYPE_84__ = type { i32 }
%struct.TYPE_74__ = type { i32 }
%struct.TYPE_72__ = type { %struct.TYPE_71__, %struct.TYPE_70__ }
%struct.TYPE_71__ = type { i32 }
%struct.TYPE_70__ = type { i32 }
%struct.TYPE_83__ = type { i32, i32 }
%struct.TYPE_79__ = type { %struct.TYPE_77__ }
%struct.TYPE_77__ = type { %struct.TYPE_76__, %struct.TYPE_103__ }
%struct.TYPE_76__ = type { i32* }
%struct.TYPE_103__ = type { i32*, i32* }
%struct.TYPE_75__ = type { %struct.TYPE_102__ }
%struct.TYPE_102__ = type { %struct.TYPE_96__, %struct.TYPE_96__ }
%struct.TYPE_96__ = type { i32*, i32* }
%struct.TYPE_69__ = type { %struct.TYPE_68__ }
%struct.TYPE_68__ = type { %struct.TYPE_105__ }
%struct.TYPE_105__ = type { i32**, %struct.TYPE_104__ }
%struct.TYPE_104__ = type { i32*, i32* }
%struct.TYPE_98__ = type { i32*, i32* }
%struct.TYPE_97__ = type { i32*, i64 }
%struct.sockaddr = type { i32 }
%struct.TYPE_93__ = type { i64, %struct.TYPE_73__, %struct.TYPE_101__, %struct.TYPE_100__, i32 }
%struct.TYPE_73__ = type { i32*, i64 }
%struct.TYPE_101__ = type { %struct.TYPE_95__, %struct.TYPE_89__ }
%struct.TYPE_95__ = type { i32*, i64 }
%struct.TYPE_89__ = type { %struct.TYPE_78__ }
%struct.TYPE_78__ = type { i32, i32 }
%struct.TYPE_100__ = type { i64, i32* }
%struct.st_quicly_pn_space_t = type { i32 }
%struct.TYPE_92__ = type { %struct.TYPE_91__* }
%struct.TYPE_91__ = type { %struct.TYPE_81__ }
%struct.TYPE_81__ = type { %struct.TYPE_80__ }
%struct.TYPE_80__ = type { i32 }

@QUICLY_FRAME_TYPE_PADDING = common dso_local global i32 0, align 4
@RECEIVE = common dso_local global i32 0, align 4
@QUICLY_STATE_FIRSTFLIGHT = common dso_local global i32 0, align 4
@QUICLY_PACKET_TYPE_BITMASK = common dso_local global i32 0, align 4
@QUICLY_MAX_TOKEN_LEN = common dso_local global i64 0, align 8
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@QUICLY_EPOCH_0RTT = common dso_local global i64 0, align 8
@QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@CRYPTO_DECRYPT = common dso_local global i32 0, align 4
@QUICTRACE_RECV = common dso_local global i32 0, align 4
@QUICLY_STATE_CONNECTED = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@discard_handshake_context = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicly_receive(%struct.TYPE_94__* %0, %struct.sockaddr* %1, %struct.sockaddr* %2, %struct.TYPE_93__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_94__*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.TYPE_93__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.st_quicly_pn_space_t**, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_95__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_95__, align 8
  %20 = alloca %struct.TYPE_95__, align 8
  %21 = alloca %struct.TYPE_95__, align 8
  %22 = alloca %struct.TYPE_95__, align 8
  %23 = alloca %struct.TYPE_92__*, align 8
  %24 = alloca %struct.TYPE_91__*, align 8
  store %struct.TYPE_94__* %0, %struct.TYPE_94__** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.TYPE_93__* %3, %struct.TYPE_93__** %9, align 8
  %25 = load i32, i32* @QUICLY_FRAME_TYPE_PADDING, align 4
  store i32 %25, i32* %16, align 4
  %26 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @update_now(i32 %29)
  %31 = load i32, i32* @RECEIVE, align 4
  %32 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %33 = call i32 (...) @probe_now()
  %34 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @QUICLY_PROBE_HEXDUMP(i32 %39, i32 %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, %struct.TYPE_94__*, i32, i32*, ...) @QUICLY_PROBE(i32 %31, %struct.TYPE_94__* %32, i32 %33, i32* %48, i32* %52, i64 %56)
  %58 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %59 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %60 = call i64 @is_stateless_reset(%struct.TYPE_94__* %58, %struct.TYPE_93__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %4
  %63 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %64 = call i32 @handle_stateless_reset(%struct.TYPE_94__* %63)
  store i32 %64, i32* %18, align 4
  br label %743

65:                                               ; preds = %4
  %66 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %78 [
    i32 129, label %70
    i32 128, label %77
  ]

70:                                               ; preds = %65
  %71 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %72, i32 0, i32 0
  store i32 128, i32* %73, align 8
  %74 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  store i32 0, i32* %18, align 4
  br label %743

77:                                               ; preds = %65
  store i32 0, i32* %18, align 4
  br label %743

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @QUICLY_PACKET_IS_LONG_HEADER(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %434

88:                                               ; preds = %79
  %89 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @QUICLY_STATE_FIRSTFLIGHT, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %102 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %103 = call i32 @handle_version_negotiation_packet(%struct.TYPE_94__* %101, %struct.TYPE_93__* %102)
  store i32 %103, i32* %5, align 4
  br label %770

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %88
  %106 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @QUICLY_PACKET_TYPE_BITMASK, align 4
  %113 = and i32 %111, %112
  switch i32 %113, label %432 [
    i32 130, label %114
    i32 131, label %306
    i32 132, label %371
    i32 133, label %397
  ]

114:                                              ; preds = %105
  %115 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @QUICLY_MAX_TOKEN_LEN, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 134, i32* %18, align 4
  br label %743

122:                                              ; preds = %114
  %123 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = ptrtoint i32* %135 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  %149 = inttoptr i64 %148 to i32*
  %150 = call { i32*, i64 } @ptls_iovec_init(i32* %131, i32* %149)
  %151 = bitcast %struct.TYPE_95__* %19 to { i32*, i64 }*
  %152 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %151, i32 0, i32 0
  %153 = extractvalue { i32*, i64 } %150, 0
  store i32* %153, i32** %152, align 8
  %154 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %151, i32 0, i32 1
  %155 = extractvalue { i32*, i64 } %150, 1
  store i64 %155, i64* %154, align 8
  %156 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %158, i32 0, i32 2
  %160 = bitcast %struct.TYPE_95__* %19 to { i32*, i64 }*
  %161 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %160, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @quicly_cid_is_equal(%struct.TYPE_98__* %159, i32* %162, i64 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %122
  store i32 134, i32* %18, align 4
  br label %743

168:                                              ; preds = %122
  %169 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %174, i32 0, i32 0
  %176 = bitcast %struct.TYPE_95__* %175 to { i32*, i64 }*
  %177 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %176, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @quicly_cid_is_equal(%struct.TYPE_98__* %172, i32* %178, i64 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %168
  store i32 134, i32* %18, align 4
  br label %743

184:                                              ; preds = %168
  %185 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  store i32 134, i32* %18, align 4
  br label %743

191:                                              ; preds = %184
  %192 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %192, i32 0, i32 7
  %194 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @free(i32* %195)
  %197 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i32* @malloc(i64 %200)
  %202 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %203, i32 0, i32 0
  store i32* %201, i32** %204, align 8
  %205 = icmp eq i32* %201, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %191
  %207 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %207, i32* %18, align 4
  br label %743

208:                                              ; preds = %191
  %209 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @memcpy(i32* %212, i32* %216, i64 %220)
  %222 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %227, i32 0, i32 1
  store i64 %225, i64* %228, align 8
  %229 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %229, i32 0, i32 6
  %231 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %233, i32 0, i32 2
  %235 = bitcast %struct.TYPE_98__* %230 to i8*
  %236 = bitcast %struct.TYPE_98__* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %235, i8* align 8 %236, i64 16, i1 false)
  %237 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %242, i32 0, i32 0
  %244 = bitcast %struct.TYPE_95__* %243 to { i32*, i64 }*
  %245 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %244, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @set_cid(%struct.TYPE_98__* %240, i32* %246, i64 %248)
  %250 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %250, i32 0, i32 4
  %252 = load %struct.TYPE_75__*, %struct.TYPE_75__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %253, i32 0, i32 0
  %255 = call i32 @dispose_cipher(%struct.TYPE_96__* %254)
  %256 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %256, i32 0, i32 4
  %258 = load %struct.TYPE_75__*, %struct.TYPE_75__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %259, i32 0, i32 1
  %261 = call i32 @dispose_cipher(%struct.TYPE_96__* %260)
  %262 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @get_aes128gcmsha256(i32 %265)
  %267 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_75__*, %struct.TYPE_75__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %272, i32 0, i32 4
  %274 = load %struct.TYPE_75__*, %struct.TYPE_75__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = call { i32*, i64 } @ptls_iovec_init(i32* %282, i32* %288)
  %290 = bitcast %struct.TYPE_95__* %20 to { i32*, i64 }*
  %291 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %290, i32 0, i32 0
  %292 = extractvalue { i32*, i64 } %289, 0
  store i32* %292, i32** %291, align 8
  %293 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %290, i32 0, i32 1
  %294 = extractvalue { i32*, i64 } %289, 1
  store i64 %294, i64* %293, align 8
  %295 = bitcast %struct.TYPE_95__* %20 to { i32*, i64 }*
  %296 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %295, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @setup_initial_encryption(i32 %266, %struct.TYPE_96__* %271, %struct.TYPE_96__* %276, i32* %297, i64 %299, i32 1)
  store i32 %300, i32* %18, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %208
  br label %743

303:                                              ; preds = %208
  %304 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %305 = call i32 @discard_sentmap_by_epoch(%struct.TYPE_94__* %304, i32 -1)
  store i32 %305, i32* %18, align 4
  br label %743

306:                                              ; preds = %105
  %307 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %307, i32 0, i32 4
  %309 = load %struct.TYPE_75__*, %struct.TYPE_75__** %308, align 8
  %310 = icmp eq %struct.TYPE_75__* %309, null
  br i1 %310, label %320, label %311

311:                                              ; preds = %306
  %312 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %312, i32 0, i32 4
  %314 = load %struct.TYPE_75__*, %struct.TYPE_75__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  store i32* %318, i32** %10, align 8
  %319 = icmp eq i32* %318, null
  br i1 %319, label %320, label %321

320:                                              ; preds = %311, %306
  store i32 134, i32* %18, align 4
  br label %743

321:                                              ; preds = %311
  %322 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @QUICLY_STATE_FIRSTFLIGHT, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %360

328:                                              ; preds = %321
  %329 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %330 = call i32 @quicly_is_client(%struct.TYPE_94__* %329)
  %331 = call i32 @assert(i32 %330)
  %332 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = call i32 @memcpy(i32* %337, i32* %342, i64 %347)
  %349 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = inttoptr i64 %353 to i32*
  %355 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %358, i32 0, i32 0
  store i32* %354, i32** %359, align 8
  br label %360

360:                                              ; preds = %328, %321
  %361 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %361, i32 0, i32 4
  %363 = load %struct.TYPE_75__*, %struct.TYPE_75__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %365, i32 0, i32 0
  store i32** %366, i32*** %11, align 8
  %367 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %367, i32 0, i32 4
  %369 = bitcast %struct.TYPE_75__** %368 to i8*
  %370 = bitcast i8* %369 to %struct.st_quicly_pn_space_t**
  store %struct.st_quicly_pn_space_t** %370, %struct.st_quicly_pn_space_t*** %12, align 8
  store i64 135, i64* %13, align 8
  br label %433

371:                                              ; preds = %105
  %372 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %372, i32 0, i32 3
  %374 = load %struct.TYPE_79__*, %struct.TYPE_79__** %373, align 8
  %375 = icmp eq %struct.TYPE_79__* %374, null
  br i1 %375, label %385, label %376

376:                                              ; preds = %371
  %377 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %377, i32 0, i32 3
  %379 = load %struct.TYPE_79__*, %struct.TYPE_79__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  store i32* %383, i32** %10, align 8
  %384 = icmp eq i32* %383, null
  br i1 %384, label %385, label %386

385:                                              ; preds = %376, %371
  store i32 134, i32* %18, align 4
  br label %743

386:                                              ; preds = %376
  %387 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %387, i32 0, i32 3
  %389 = load %struct.TYPE_79__*, %struct.TYPE_79__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %391, i32 0, i32 0
  store i32** %392, i32*** %11, align 8
  %393 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %393, i32 0, i32 3
  %395 = bitcast %struct.TYPE_79__** %394 to i8*
  %396 = bitcast i8* %395 to %struct.st_quicly_pn_space_t**
  store %struct.st_quicly_pn_space_t** %396, %struct.st_quicly_pn_space_t*** %12, align 8
  store i64 136, i64* %13, align 8
  br label %433

397:                                              ; preds = %105
  %398 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %399 = call i32 @quicly_is_client(%struct.TYPE_94__* %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %397
  store i32 134, i32* %18, align 4
  br label %743

402:                                              ; preds = %397
  %403 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %403, i32 0, i32 5
  %405 = load %struct.TYPE_69__*, %struct.TYPE_69__** %404, align 8
  %406 = icmp eq %struct.TYPE_69__* %405, null
  br i1 %406, label %417, label %407

407:                                              ; preds = %402
  %408 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %408, i32 0, i32 5
  %410 = load %struct.TYPE_69__*, %struct.TYPE_69__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %413, i32 0, i32 1
  %415 = load i32*, i32** %414, align 8
  store i32* %415, i32** %10, align 8
  %416 = icmp eq i32* %415, null
  br i1 %416, label %417, label %418

417:                                              ; preds = %407, %402
  store i32 134, i32* %18, align 4
  br label %743

418:                                              ; preds = %407
  %419 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %419, i32 0, i32 5
  %421 = load %struct.TYPE_69__*, %struct.TYPE_69__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %423, i32 0, i32 0
  %425 = load i32**, i32*** %424, align 8
  %426 = getelementptr inbounds i32*, i32** %425, i64 0
  store i32** %426, i32*** %11, align 8
  %427 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %427, i32 0, i32 5
  %429 = bitcast %struct.TYPE_69__** %428 to i8*
  %430 = bitcast i8* %429 to %struct.st_quicly_pn_space_t**
  store %struct.st_quicly_pn_space_t** %430, %struct.st_quicly_pn_space_t*** %12, align 8
  %431 = load i64, i64* @QUICLY_EPOCH_0RTT, align 8
  store i64 %431, i64* %13, align 8
  br label %433

432:                                              ; preds = %105
  store i32 134, i32* %18, align 4
  br label %743

433:                                              ; preds = %418, %386, %360
  br label %462

434:                                              ; preds = %79
  %435 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %436 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %435, i32 0, i32 5
  %437 = load %struct.TYPE_69__*, %struct.TYPE_69__** %436, align 8
  %438 = icmp eq %struct.TYPE_69__* %437, null
  br i1 %438, label %449, label %439

439:                                              ; preds = %434
  %440 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %440, i32 0, i32 5
  %442 = load %struct.TYPE_69__*, %struct.TYPE_69__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %445, i32 0, i32 0
  %447 = load i32*, i32** %446, align 8
  store i32* %447, i32** %10, align 8
  %448 = icmp eq i32* %447, null
  br i1 %448, label %449, label %450

449:                                              ; preds = %439, %434
  store i32 134, i32* %18, align 4
  br label %743

450:                                              ; preds = %439
  %451 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %451, i32 0, i32 5
  %453 = load %struct.TYPE_69__*, %struct.TYPE_69__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %455, i32 0, i32 0
  %457 = load i32**, i32*** %456, align 8
  store i32** %457, i32*** %11, align 8
  %458 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %458, i32 0, i32 5
  %460 = bitcast %struct.TYPE_69__** %459 to i8*
  %461 = bitcast i8* %460 to %struct.st_quicly_pn_space_t**
  store %struct.st_quicly_pn_space_t** %461, %struct.st_quicly_pn_space_t*** %12, align 8
  store i64 137, i64* %13, align 8
  br label %462

462:                                              ; preds = %450, %433
  %463 = load i32*, i32** %10, align 8
  %464 = load i32**, i32*** %11, align 8
  %465 = load %struct.st_quicly_pn_space_t**, %struct.st_quicly_pn_space_t*** %12, align 8
  %466 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %465, align 8
  %467 = getelementptr inbounds %struct.st_quicly_pn_space_t, %struct.st_quicly_pn_space_t* %466, i32 0, i32 0
  %468 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %469 = call { i32*, i64 } @decrypt_packet(i32* %463, i32** %464, i32* %467, %struct.TYPE_93__* %468, i32* %15)
  %470 = bitcast %struct.TYPE_95__* %22 to { i32*, i64 }*
  %471 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %470, i32 0, i32 0
  %472 = extractvalue { i32*, i64 } %469, 0
  store i32* %472, i32** %471, align 8
  %473 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %470, i32 0, i32 1
  %474 = extractvalue { i32*, i64 } %469, 1
  store i64 %474, i64* %473, align 8
  %475 = bitcast %struct.TYPE_95__* %14 to i8*
  %476 = bitcast %struct.TYPE_95__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %475, i8* align 8 %476, i64 16, i1 false)
  %477 = bitcast %struct.TYPE_95__* %21 to i8*
  %478 = bitcast %struct.TYPE_95__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %477, i8* align 8 %478, i64 16, i1 false)
  %479 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %21, i32 0, i32 0
  %480 = load i32*, i32** %479, align 8
  %481 = icmp eq i32* %480, null
  br i1 %481, label %482, label %483

482:                                              ; preds = %462
  store i32 134, i32* %18, align 4
  br label %743

483:                                              ; preds = %462
  %484 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %14, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %483
  %488 = load i32, i32* @QUICLY_TRANSPORT_ERROR_PROTOCOL_VIOLATION, align 4
  store i32 %488, i32* %18, align 4
  br label %743

489:                                              ; preds = %483
  %490 = load i32, i32* @CRYPTO_DECRYPT, align 4
  %491 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %492 = load i32, i32* %15, align 4
  %493 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %14, i32 0, i32 0
  %494 = load i32*, i32** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %14, i32 0, i32 1
  %496 = load i64, i64* %495, align 8
  %497 = call i32 (i32, %struct.TYPE_94__*, i32, i32*, ...) @QUICLY_PROBE(i32 %490, %struct.TYPE_94__* %491, i32 %492, i32* %494, i64 %496)
  %498 = load i32, i32* @QUICTRACE_RECV, align 4
  %499 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %500 = call i32 (...) @probe_now()
  %501 = load i32, i32* %15, align 4
  %502 = sext i32 %501 to i64
  %503 = inttoptr i64 %502 to i32*
  %504 = call i32 (i32, %struct.TYPE_94__*, i32, i32*, ...) @QUICLY_PROBE(i32 %498, %struct.TYPE_94__* %499, i32 %500, i32* %503)
  %505 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %506 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* @QUICLY_STATE_FIRSTFLIGHT, align 4
  %510 = icmp eq i32 %508, %509
  br i1 %510, label %511, label %516

511:                                              ; preds = %489
  %512 = load i32, i32* @QUICLY_STATE_CONNECTED, align 4
  %513 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %514 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %514, i32 0, i32 0
  store i32 %512, i32* %515, align 8
  br label %516

516:                                              ; preds = %511, %489
  %517 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %518, i32 0, i32 3
  %520 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %521, align 4
  %524 = load %struct.TYPE_93__*, %struct.TYPE_93__** %9, align 8
  %525 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %525, i32 0, i32 1
  %527 = load i64, i64* %526, align 8
  %528 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %529 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %529, i32 0, i32 3
  %531 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = sext i32 %533 to i64
  %535 = add nsw i64 %534, %527
  %536 = trunc i64 %535 to i32
  store i32 %536, i32* %532, align 8
  %537 = load i64, i64* %13, align 8
  %538 = icmp eq i64 %537, 136
  br i1 %538, label %539, label %557

539:                                              ; preds = %516
  %540 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %541 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %540, i32 0, i32 4
  %542 = load %struct.TYPE_75__*, %struct.TYPE_75__** %541, align 8
  %543 = icmp ne %struct.TYPE_75__* %542, null
  br i1 %543, label %544, label %557

544:                                              ; preds = %539
  %545 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %546 = call i32 @discard_initial_context(%struct.TYPE_94__* %545)
  store i32 %546, i32* %18, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %544
  br label %743

549:                                              ; preds = %544
  %550 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %551 = call i32 @update_loss_alarm(%struct.TYPE_94__* %550)
  %552 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %553 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %553, i32 0, i32 2
  %555 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %555, i32 0, i32 0
  store i32 1, i32* %556, align 4
  br label %557

557:                                              ; preds = %549, %539, %516
  %558 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %559 = load i64, i64* %13, align 8
  %560 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %14, i32 0, i32 0
  %561 = load i32*, i32** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %14, i32 0, i32 1
  %563 = load i64, i64* %562, align 8
  %564 = call i32 @handle_payload(%struct.TYPE_94__* %558, i64 %559, i32* %561, i64 %563, i32* %16, i32* %17)
  store i32 %564, i32* %18, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %557
  br label %743

567:                                              ; preds = %557
  %568 = load %struct.st_quicly_pn_space_t**, %struct.st_quicly_pn_space_t*** %12, align 8
  %569 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %568, align 8
  %570 = icmp ne %struct.st_quicly_pn_space_t* %569, null
  br i1 %570, label %571, label %582

571:                                              ; preds = %567
  %572 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %573 = load %struct.st_quicly_pn_space_t**, %struct.st_quicly_pn_space_t*** %12, align 8
  %574 = load %struct.st_quicly_pn_space_t*, %struct.st_quicly_pn_space_t** %573, align 8
  %575 = load i32, i32* %15, align 4
  %576 = load i32, i32* %17, align 4
  %577 = load i64, i64* %13, align 8
  %578 = call i32 @record_receipt(%struct.TYPE_94__* %572, %struct.st_quicly_pn_space_t* %574, i32 %575, i32 %576, i64 %577)
  store i32 %578, i32* %18, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %581

580:                                              ; preds = %571
  br label %743

581:                                              ; preds = %571
  br label %582

582:                                              ; preds = %581, %567
  %583 = load i64, i64* %13, align 8
  switch i64 %583, label %739 [
    i64 135, label %584
    i64 136, label %617
    i64 137, label %727
  ]

584:                                              ; preds = %582
  %585 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %586 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %585, i32 0, i32 4
  %587 = load %struct.TYPE_75__*, %struct.TYPE_75__** %586, align 8
  %588 = icmp ne %struct.TYPE_75__* %587, null
  %589 = zext i1 %588 to i32
  %590 = call i32 @assert(i32 %589)
  %591 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %592 = call i32 @quicly_is_client(%struct.TYPE_94__* %591)
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %616

594:                                              ; preds = %584
  %595 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %596 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %595, i32 0, i32 3
  %597 = load %struct.TYPE_79__*, %struct.TYPE_79__** %596, align 8
  %598 = icmp ne %struct.TYPE_79__* %597, null
  br i1 %598, label %599, label %616

599:                                              ; preds = %594
  %600 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %601 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %600, i32 0, i32 3
  %602 = load %struct.TYPE_79__*, %struct.TYPE_79__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %603, i32 0, i32 0
  %605 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %604, i32 0, i32 0
  %606 = load i32*, i32** %605, align 8
  %607 = icmp ne i32* %606, null
  br i1 %607, label %608, label %616

608:                                              ; preds = %599
  %609 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %610 = call i32 @discard_initial_context(%struct.TYPE_94__* %609)
  store i32 %610, i32* %18, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %608
  br label %743

613:                                              ; preds = %608
  %614 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %615 = call i32 @update_loss_alarm(%struct.TYPE_94__* %614)
  br label %616

616:                                              ; preds = %613, %599, %594, %584
  br label %740

617:                                              ; preds = %582
  %618 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %619 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %618, i32 0, i32 2
  %620 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %681, label %623

623:                                              ; preds = %617
  %624 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %625 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %624, i32 0, i32 2
  %626 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 4
  %628 = call i32 @ptls_handshake_is_complete(i32 %627)
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %681

630:                                              ; preds = %623
  %631 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %632 = call %struct.TYPE_92__* @quicly_get_stream(%struct.TYPE_94__* %631, i32 -137)
  store %struct.TYPE_92__* %632, %struct.TYPE_92__** %23, align 8
  %633 = load %struct.TYPE_92__*, %struct.TYPE_92__** %23, align 8
  %634 = icmp ne %struct.TYPE_92__* %633, null
  %635 = zext i1 %634 to i32
  %636 = call i32 @assert(i32 %635)
  %637 = load %struct.TYPE_92__*, %struct.TYPE_92__** %23, align 8
  %638 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %637, i32 0, i32 0
  %639 = load %struct.TYPE_91__*, %struct.TYPE_91__** %638, align 8
  store %struct.TYPE_91__* %639, %struct.TYPE_91__** %24, align 8
  %640 = load %struct.TYPE_91__*, %struct.TYPE_91__** %24, align 8
  %641 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %640, i32 0, i32 0
  %642 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %641, i32 0, i32 0
  %643 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 4
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %680

646:                                              ; preds = %630
  %647 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %648 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %647, i32 0, i32 0
  %649 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %648, i32 0, i32 3
  %650 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %651 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %650, i32 0, i32 0
  %652 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %651, i32 0, i32 2
  %653 = load i32, i32* %652, align 8
  %654 = load i32, i32* @now, align 4
  %655 = call i32 @quicly_sentmap_prepare(i32* %649, i32 %653, i32 %654, i64 136)
  store i32 %655, i32* %18, align 4
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %658

657:                                              ; preds = %646
  br label %743

658:                                              ; preds = %646
  %659 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %660 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %659, i32 0, i32 0
  %661 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %660, i32 0, i32 3
  %662 = load i32, i32* @discard_handshake_context, align 4
  %663 = call i32* @quicly_sentmap_allocate(i32* %661, i32 %662)
  %664 = icmp eq i32* %663, null
  br i1 %664, label %665, label %667

665:                                              ; preds = %658
  %666 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %666, i32* %18, align 4
  br label %743

667:                                              ; preds = %658
  %668 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %669 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %668, i32 0, i32 0
  %670 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %669, i32 0, i32 3
  %671 = call i32 @quicly_sentmap_commit(i32* %670, i32 0)
  %672 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %673 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %672, i32 0, i32 0
  %674 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %673, i32 0, i32 2
  %675 = load i32, i32* %674, align 8
  %676 = add nsw i32 %675, 1
  store i32 %676, i32* %674, align 8
  %677 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %678 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %677, i32 0, i32 2
  %679 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %678, i32 0, i32 0
  store i32 1, i32* %679, align 8
  br label %680

680:                                              ; preds = %667, %630
  br label %681

681:                                              ; preds = %680, %623, %617
  %682 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %683 = call i32 @quicly_is_client(%struct.TYPE_94__* %682)
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %726

685:                                              ; preds = %681
  %686 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %687 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %686, i32 0, i32 1
  %688 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %687, i32 0, i32 1
  %689 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %688, i32 0, i32 0
  %690 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %689, i32 0, i32 0
  %691 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 4
  %693 = load i32, i32* @AF_UNSPEC, align 4
  %694 = icmp eq i32 %692, %693
  br i1 %694, label %695, label %726

695:                                              ; preds = %685
  %696 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %697 = icmp ne %struct.sockaddr* %696, null
  br i1 %697, label %698, label %726

698:                                              ; preds = %695
  %699 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %700 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %699, i32 0, i32 0
  %701 = load i32, i32* %700, align 4
  %702 = load i32, i32* @AF_UNSPEC, align 4
  %703 = icmp ne i32 %701, %702
  br i1 %703, label %704, label %726

704:                                              ; preds = %698
  %705 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %706 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %705, i32 0, i32 2
  %707 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %706, i32 0, i32 1
  %708 = load i32, i32* %707, align 4
  %709 = call i32 @ptls_handshake_is_complete(i32 %708)
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %726

711:                                              ; preds = %704
  %712 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %713 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %713, i32 0, i32 2
  %715 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %714, i32 0, i32 0
  %716 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %715, i32 0, i32 0
  %717 = load i32, i32* %716, align 8
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %726

719:                                              ; preds = %711
  %720 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %721 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %721, i32 0, i32 1
  %723 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %722, i32 0, i32 0
  %724 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %725 = call i32 @set_address(%struct.TYPE_99__* %723, %struct.sockaddr* %724)
  br label %726

726:                                              ; preds = %719, %711, %704, %698, %695, %685, %681
  br label %740

727:                                              ; preds = %582
  %728 = load i32, i32* %17, align 4
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %738, label %730

730:                                              ; preds = %727
  %731 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %732 = call i32 @should_send_max_data(%struct.TYPE_94__* %731)
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %738

734:                                              ; preds = %730
  %735 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %736 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %735, i32 0, i32 0
  %737 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %736, i32 0, i32 1
  store i32 0, i32* %737, align 4
  br label %738

738:                                              ; preds = %734, %730, %727
  br label %740

739:                                              ; preds = %582
  br label %740

740:                                              ; preds = %739, %738, %726, %616
  %741 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %742 = call i32 @update_idle_timeout(%struct.TYPE_94__* %741, i32 1)
  br label %743

743:                                              ; preds = %740, %665, %657, %612, %580, %566, %548, %487, %482, %449, %432, %417, %401, %385, %320, %303, %302, %206, %190, %183, %167, %121, %77, %70, %62
  %744 = load i32, i32* %18, align 4
  switch i32 %744, label %763 [
    i32 0, label %745
    i32 134, label %762
  ]

745:                                              ; preds = %743
  %746 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %747 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %746, i32 0, i32 0
  %748 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %747, i32 0, i32 0
  %749 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %748, i32 0, i32 0
  %750 = load i32, i32* %749, align 8
  %751 = load i32, i32* @now, align 4
  %752 = icmp slt i32 %750, %751
  br i1 %752, label %753, label %759

753:                                              ; preds = %745
  %754 = load i32, i32* @now, align 4
  %755 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %756 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %755, i32 0, i32 0
  %757 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %756, i32 0, i32 0
  %758 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %757, i32 0, i32 0
  store i32 %754, i32* %758, align 8
  br label %759

759:                                              ; preds = %753, %745
  %760 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %761 = call i32 @assert_consistency(%struct.TYPE_94__* %760, i32 0)
  br label %768

762:                                              ; preds = %743
  br label %768

763:                                              ; preds = %743
  %764 = load %struct.TYPE_94__*, %struct.TYPE_94__** %6, align 8
  %765 = load i32, i32* %18, align 4
  %766 = load i32, i32* %16, align 4
  %767 = call i32 @initiate_close(%struct.TYPE_94__* %764, i32 %765, i32 %766, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %768

768:                                              ; preds = %763, %762, %759
  %769 = load i32, i32* %18, align 4
  store i32 %769, i32* %5, align 4
  br label %770

770:                                              ; preds = %768, %100
  %771 = load i32, i32* %5, align 4
  ret i32 %771
}

declare dso_local i32 @update_now(i32) #1

declare dso_local i32 @QUICLY_PROBE(i32, %struct.TYPE_94__*, i32, i32*, ...) #1

declare dso_local i32 @probe_now(...) #1

declare dso_local i32 @QUICLY_PROBE_HEXDUMP(i32, i32) #1

declare dso_local i64 @is_stateless_reset(%struct.TYPE_94__*, %struct.TYPE_93__*) #1

declare dso_local i32 @handle_stateless_reset(%struct.TYPE_94__*) #1

declare dso_local i64 @QUICLY_PACKET_IS_LONG_HEADER(i32) #1

declare dso_local i32 @handle_version_negotiation_packet(%struct.TYPE_94__*, %struct.TYPE_93__*) #1

declare dso_local { i32*, i64 } @ptls_iovec_init(i32*, i32*) #1

declare dso_local i32 @quicly_cid_is_equal(%struct.TYPE_98__*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_cid(%struct.TYPE_98__*, i32*, i64) #1

declare dso_local i32 @dispose_cipher(%struct.TYPE_96__*) #1

declare dso_local i32 @setup_initial_encryption(i32, %struct.TYPE_96__*, %struct.TYPE_96__*, i32*, i64, i32) #1

declare dso_local i32 @get_aes128gcmsha256(i32) #1

declare dso_local i32 @discard_sentmap_by_epoch(%struct.TYPE_94__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @quicly_is_client(%struct.TYPE_94__*) #1

declare dso_local { i32*, i64 } @decrypt_packet(i32*, i32**, i32*, %struct.TYPE_93__*, i32*) #1

declare dso_local i32 @discard_initial_context(%struct.TYPE_94__*) #1

declare dso_local i32 @update_loss_alarm(%struct.TYPE_94__*) #1

declare dso_local i32 @handle_payload(%struct.TYPE_94__*, i64, i32*, i64, i32*, i32*) #1

declare dso_local i32 @record_receipt(%struct.TYPE_94__*, %struct.st_quicly_pn_space_t*, i32, i32, i64) #1

declare dso_local i32 @ptls_handshake_is_complete(i32) #1

declare dso_local %struct.TYPE_92__* @quicly_get_stream(%struct.TYPE_94__*, i32) #1

declare dso_local i32 @quicly_sentmap_prepare(i32*, i32, i32, i64) #1

declare dso_local i32* @quicly_sentmap_allocate(i32*, i32) #1

declare dso_local i32 @quicly_sentmap_commit(i32*, i32) #1

declare dso_local i32 @set_address(%struct.TYPE_99__*, %struct.sockaddr*) #1

declare dso_local i32 @should_send_max_data(%struct.TYPE_94__*) #1

declare dso_local i32 @update_idle_timeout(%struct.TYPE_94__*, i32) #1

declare dso_local i32 @assert_consistency(%struct.TYPE_94__*, i32) #1

declare dso_local i32 @initiate_close(%struct.TYPE_94__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
