; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.alg_sock = type { %struct.hash_ctx* }
%struct.hash_ctx = type { i32, i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@ALG_MAX_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @hash_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.alg_sock*, align 8
  %10 = alloca %struct.hash_ctx*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i32, i32* @ALG_MAX_PAGES, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %8, align 8
  %20 = load %struct.sock*, %struct.sock** %8, align 8
  %21 = call %struct.alg_sock* @alg_sk(%struct.sock* %20)
  store %struct.alg_sock* %21, %struct.alg_sock** %9, align 8
  %22 = load %struct.alg_sock*, %struct.alg_sock** %9, align 8
  %23 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %22, i32 0, i32 0
  %24 = load %struct.hash_ctx*, %struct.hash_ctx** %23, align 8
  store %struct.hash_ctx* %24, %struct.hash_ctx** %10, align 8
  store i64 0, i64* %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.sock*, %struct.sock** %8, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.sock*, %struct.sock** %8, align 8
  %36 = call i32 @lock_sock(%struct.sock* %35)
  %37 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %38 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %63, label %41

41:                                               ; preds = %34
  %42 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %43 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MSG_MORE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.sock*, %struct.sock** %8, align 8
  %50 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %51 = call i32 @hash_free_result(%struct.sock* %49, %struct.hash_ctx* %50)
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %54 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %53, i32 0, i32 2
  %55 = call i32 @crypto_ahash_init(i32* %54)
  %56 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %57 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %56, i32 0, i32 1
  %58 = call i32 @crypto_wait_req(i32 %55, i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %158

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %34
  %64 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %65 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %116, %63
  %67 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %68 = call i32 @msg_data_left(%struct.msghdr* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %125

70:                                               ; preds = %66
  %71 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %72 = call i32 @msg_data_left(%struct.msghdr* %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %76, %70
  %79 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %80 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %79, i32 0, i32 4
  %81 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %82 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %81, i32 0, i32 1
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @af_alg_make_sg(%struct.TYPE_3__* %80, i32* %82, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = phi i32 [ 0, %90 ], [ %92, %91 ]
  store i32 %94, i32* %12, align 4
  br label %158

95:                                               ; preds = %78
  %96 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %97 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %96, i32 0, i32 2
  %98 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %99 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @ahash_request_set_crypt(i32* %97, i32* %101, i32* null, i32 %102)
  %104 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %105 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %104, i32 0, i32 2
  %106 = call i32 @crypto_ahash_update(i32* %105)
  %107 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %108 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %107, i32 0, i32 1
  %109 = call i32 @crypto_wait_req(i32 %106, i32* %108)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %111 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %110, i32 0, i32 4
  %112 = call i32 @af_alg_free_sg(%struct.TYPE_3__* %111)
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %95
  br label %158

116:                                              ; preds = %95
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %11, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %11, align 8
  %121 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %122 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %121, i32 0, i32 1
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @iov_iter_advance(i32* %122, i32 %123)
  br label %66

125:                                              ; preds = %66
  store i32 0, i32* %12, align 4
  %126 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %127 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MSG_MORE, align 4
  %130 = and i32 %128, %129
  %131 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %132 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %134 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %157, label %137

137:                                              ; preds = %125
  %138 = load %struct.sock*, %struct.sock** %8, align 8
  %139 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %140 = call i32 @hash_alloc_result(%struct.sock* %138, %struct.hash_ctx* %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %158

144:                                              ; preds = %137
  %145 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %146 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %145, i32 0, i32 2
  %147 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %148 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @ahash_request_set_crypt(i32* %146, i32* null, i32* %149, i32 0)
  %151 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %152 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %151, i32 0, i32 2
  %153 = call i32 @crypto_ahash_final(i32* %152)
  %154 = load %struct.hash_ctx*, %struct.hash_ctx** %10, align 8
  %155 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %154, i32 0, i32 1
  %156 = call i32 @crypto_wait_req(i32 %153, i32* %155)
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %144, %125
  br label %158

158:                                              ; preds = %157, %143, %115, %93, %61
  %159 = load %struct.sock*, %struct.sock** %8, align 8
  %160 = call i32 @release_sock(%struct.sock* %159)
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = sext i32 %161 to i64
  br label %167

165:                                              ; preds = %158
  %166 = load i64, i64* %11, align 8
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i64 [ %164, %163 ], [ %166, %165 ]
  %169 = trunc i64 %168 to i32
  ret i32 %169
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @hash_free_result(%struct.sock*, %struct.hash_ctx*) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i32 @crypto_ahash_init(i32*) #1

declare dso_local i32 @msg_data_left(%struct.msghdr*) #1

declare dso_local i32 @af_alg_make_sg(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(i32*, i32*, i32*, i32) #1

declare dso_local i32 @crypto_ahash_update(i32*) #1

declare dso_local i32 @af_alg_free_sg(%struct.TYPE_3__*) #1

declare dso_local i32 @iov_iter_advance(i32*, i32) #1

declare dso_local i32 @hash_alloc_result(%struct.sock*, %struct.hash_ctx*) #1

declare dso_local i32 @crypto_ahash_final(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
