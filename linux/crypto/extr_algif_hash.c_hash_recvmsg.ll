; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.alg_sock = type { %struct.hash_ctx* }
%struct.hash_ctx = type { i32, i32, i32, i64 }

@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @hash_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.alg_sock*, align 8
  %11 = alloca %struct.hash_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = call %struct.alg_sock* @alg_sk(%struct.sock* %18)
  store %struct.alg_sock* %19, %struct.alg_sock** %10, align 8
  %20 = load %struct.alg_sock*, %struct.alg_sock** %10, align 8
  %21 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %20, i32 0, i32 0
  %22 = load %struct.hash_ctx*, %struct.hash_ctx** %21, align 8
  store %struct.hash_ctx* %22, %struct.hash_ctx** %11, align 8
  %23 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %24 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %23, i32 0, i32 2
  %25 = call i32 @crypto_ahash_reqtfm(i32* %24)
  %26 = call i32 @crypto_ahash_digestsize(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  br label %46

34:                                               ; preds = %4
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @MSG_TRUNC, align 4
  %41 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %34
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.sock*, %struct.sock** %9, align 8
  %48 = call i32 @lock_sock(%struct.sock* %47)
  %49 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %50 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %13, align 4
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %54 = call i32 @hash_alloc_result(%struct.sock* %52, %struct.hash_ctx* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %111

58:                                               ; preds = %46
  %59 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %60 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %59, i32 0, i32 2
  %61 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %62 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ahash_request_set_crypt(i32* %60, i32* null, i32 %63, i32 0)
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %58
  %68 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %69 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %74 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %73, i32 0, i32 2
  %75 = call i32 @crypto_ahash_init(i32* %74)
  %76 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %77 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %76, i32 0, i32 1
  %78 = call i32 @crypto_wait_req(i32 %75, i32* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %111

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %67, %58
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %88 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %86, %83
  %92 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %93 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %95 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %94, i32 0, i32 2
  %96 = call i32 @crypto_ahash_final(i32* %95)
  %97 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %98 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %97, i32 0, i32 1
  %99 = call i32 @crypto_wait_req(i32 %96, i32* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %111

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %86
  %105 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %106 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %107 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @memcpy_to_msg(%struct.msghdr* %105, i32 %108, i64 %109)
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %104, %102, %81, %57
  %112 = load %struct.sock*, %struct.sock** %9, align 8
  %113 = load %struct.hash_ctx*, %struct.hash_ctx** %11, align 8
  %114 = call i32 @hash_free_result(%struct.sock* %112, %struct.hash_ctx* %113)
  %115 = load %struct.sock*, %struct.sock** %9, align 8
  %116 = call i32 @release_sock(%struct.sock* %115)
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = sext i32 %117 to i64
  br label %123

121:                                              ; preds = %111
  %122 = load i64, i64* %7, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i64 [ %120, %119 ], [ %122, %121 ]
  %125 = trunc i64 %124 to i32
  ret i32 %125
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @crypto_ahash_digestsize(i32) #1

declare dso_local i32 @crypto_ahash_reqtfm(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @hash_alloc_result(%struct.sock*, %struct.hash_ctx*) #1

declare dso_local i32 @ahash_request_set_crypt(i32*, i32*, i32, i32) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i32 @crypto_ahash_init(i32*) #1

declare dso_local i32 @crypto_ahash_final(i32*) #1

declare dso_local i32 @memcpy_to_msg(%struct.msghdr*, i32, i64) #1

declare dso_local i32 @hash_free_result(%struct.sock*, %struct.hash_ctx*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
