; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_main.c_on_http3_accept.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_main.c_on_http3_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, i64, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_32__, %struct.TYPE_28__ }
%struct.TYPE_32__ = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_37__ = type { i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_26__*, i32*)* }
%struct.init_ebpf_key_info_t = type { i32*, i32* }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32 }

@init_ebpf_key_info = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_34__*)* @on_http3_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @on_http3_accept(i32* %0, %struct.TYPE_36__* %1, %struct.TYPE_36__* %2, %struct.TYPE_34__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_36__*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca %struct.init_ebpf_key_info_t, align 8
  %12 = alloca %struct.TYPE_38__, align 4
  %13 = alloca %struct.TYPE_35__*, align 8
  %14 = alloca %struct.TYPE_35__, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [16 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %7, align 8
  store %struct.TYPE_36__* %2, %struct.TYPE_36__** %8, align 8
  store %struct.TYPE_34__* %3, %struct.TYPE_34__** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = bitcast i8* %22 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %23, %struct.TYPE_37__** %10, align 8
  %24 = getelementptr inbounds %struct.init_ebpf_key_info_t, %struct.init_ebpf_key_info_t* %11, i32 0, i32 0
  %25 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %25, i32 0, i32 0
  store i32* %26, i32** %24, align 8
  %27 = getelementptr inbounds %struct.init_ebpf_key_info_t, %struct.init_ebpf_key_info_t* %11, i32 0, i32 1
  %28 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %28, i32 0, i32 0
  store i32* %29, i32** %27, align 8
  %30 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @init_ebpf_key_info, align 4
  %35 = call i64 @h2o_socket_ebpf_lookup(i32 %33, i32 %34, %struct.init_ebpf_key_info_t* %11)
  %36 = bitcast %struct.TYPE_38__* %12 to i64*
  store i64 %35, i64* %36, align 4
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %13, align 8
  %37 = call i64 @num_connections(i32 0)
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @conf, i32 0, i32 0), align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %4
  %41 = call i64 @num_quic_connections(i32 0)
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @conf, i32 0, i32 1), align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %4
  store i32* null, i32** %5, align 8
  br label %163

45:                                               ; preds = %40
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %45
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @quic_decrypt_address_token(%struct.TYPE_35__* %14, i64 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @validate_token(%struct.TYPE_37__* %59, i32* %61, i32 %65, i32 %70, %struct.TYPE_35__* %14)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  store %struct.TYPE_35__* %14, %struct.TYPE_35__** %13, align 8
  br label %74

74:                                               ; preds = %73, %58, %51
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %77 = icmp eq %struct.TYPE_35__* %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %147, label %83

83:                                               ; preds = %78, %75
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %16, align 4
  %87 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %91 [
    i32 128, label %89
    i32 129, label %90
  ]

89:                                               ; preds = %83
  store i32 1, i32* %16, align 4
  br label %92

90:                                               ; preds = %83
  store i32 0, i32* %16, align 4
  br label %92

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %90, %89
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %146

95:                                               ; preds = %92
  %96 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %97 = call i32 @ptls_openssl_random_bytes(i32* %96, i32 64)
  %98 = call i32* @quic_get_address_token_encryptor(i32* %18)
  store i32* %98, i32** %19, align 8
  %99 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %110, i32 0, i32 0
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %113 = call i32 @ptls_iovec_init(i32* %112, i32 64)
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ptls_iovec_init(i32* %18, i32 1)
  %120 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %121 = call i32* @quicly_send_retry(%struct.TYPE_27__* %102, i32* %103, i32* %105, i32 %109, i32* %111, i32 %113, i32 %118, i32 %119, i32 %120)
  store i32* %121, i32** %20, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = icmp ne i32* %122, null
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %126, i32 0, i32 1
  %128 = load i32*, i32** %20, align 8
  %129 = call i32 @h2o_http3_send_datagram(%struct.TYPE_30__* %127, i32* %128)
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 0
  %137 = load i32 (%struct.TYPE_26__*, i32*)*, i32 (%struct.TYPE_26__*, i32*)** %136, align 8
  %138 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %142, align 8
  %144 = load i32*, i32** %20, align 8
  %145 = call i32 %137(%struct.TYPE_26__* %143, i32* %144)
  store i32* null, i32** %5, align 8
  br label %163

146:                                              ; preds = %92
  br label %147

147:                                              ; preds = %146, %78
  %148 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %7, align 8
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %151 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %152 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %12, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32* @h2o_http3_server_accept(%struct.TYPE_37__* %148, %struct.TYPE_36__* %149, %struct.TYPE_36__* %150, %struct.TYPE_34__* %151, %struct.TYPE_35__* %152, i32 %154, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @conf, i32 0, i32 2, i32 0))
  store i32* %155, i32** %15, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  store i32* null, i32** %5, align 8
  br label %163

158:                                              ; preds = %147
  %159 = call i64 @num_connections(i32 1)
  %160 = call i64 @num_quic_connections(i32 1)
  %161 = call i32 @num_sessions(i32 1)
  %162 = load i32*, i32** %15, align 8
  store i32* %162, i32** %5, align 8
  br label %163

163:                                              ; preds = %158, %157, %95, %44
  %164 = load i32*, i32** %5, align 8
  ret i32* %164
}

declare dso_local i64 @h2o_socket_ebpf_lookup(i32, i32, %struct.init_ebpf_key_info_t*) #1

declare dso_local i64 @num_connections(i32) #1

declare dso_local i64 @num_quic_connections(i32) #1

declare dso_local i64 @quic_decrypt_address_token(%struct.TYPE_35__*, i64) #1

declare dso_local i64 @validate_token(%struct.TYPE_37__*, i32*, i32, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @ptls_openssl_random_bytes(i32*, i32) #1

declare dso_local i32* @quic_get_address_token_encryptor(i32*) #1

declare dso_local i32* @quicly_send_retry(%struct.TYPE_27__*, i32*, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_http3_send_datagram(%struct.TYPE_30__*, i32*) #1

declare dso_local i32* @h2o_http3_server_accept(%struct.TYPE_37__*, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_34__*, %struct.TYPE_35__*, i32, i32*) #1

declare dso_local i32 @num_sessions(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
