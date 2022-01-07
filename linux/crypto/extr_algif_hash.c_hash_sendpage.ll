; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_sendpage.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_sendpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.page = type { i32 }
%struct.alg_sock = type { %struct.hash_ctx* }
%struct.hash_ctx = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSG_SENDPAGE_NOTLAST = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.socket*, %struct.page*, i32, i64, i32)* @hash_sendpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hash_sendpage(%struct.socket* %0, %struct.page* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.alg_sock*, align 8
  %13 = alloca %struct.hash_ctx*, align 8
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %11, align 8
  %19 = call %struct.alg_sock* @alg_sk(%struct.sock* %18)
  store %struct.alg_sock* %19, %struct.alg_sock** %12, align 8
  %20 = load %struct.alg_sock*, %struct.alg_sock** %12, align 8
  %21 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %20, i32 0, i32 0
  %22 = load %struct.hash_ctx*, %struct.hash_ctx** %21, align 8
  store %struct.hash_ctx* %22, %struct.hash_ctx** %13, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @MSG_SENDPAGE_NOTLAST, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* @MSG_MORE, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %5
  %32 = load %struct.sock*, %struct.sock** %11, align 8
  %33 = call i32 @lock_sock(%struct.sock* %32)
  %34 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %35 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sg_init_table(i32 %37, i32 1)
  %39 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %40 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @sg_set_page(i32 %42, %struct.page* %43, i64 %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MSG_MORE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %31
  %52 = load %struct.sock*, %struct.sock** %11, align 8
  %53 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %54 = call i32 @hash_alloc_result(%struct.sock* %52, %struct.hash_ctx* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %134

58:                                               ; preds = %51
  br label %69

59:                                               ; preds = %31
  %60 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %61 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load %struct.sock*, %struct.sock** %11, align 8
  %66 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %67 = call i32 @hash_free_result(%struct.sock* %65, %struct.hash_ctx* %66)
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68, %58
  %70 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %71 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %70, i32 0, i32 2
  %72 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %73 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %77 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @ahash_request_set_crypt(i32* %71, i32 %75, i32 %78, i64 %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @MSG_MORE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %69
  %86 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %87 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %92 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %91, i32 0, i32 2
  %93 = call i32 @crypto_ahash_finup(i32* %92)
  store i32 %93, i32* %14, align 4
  br label %98

94:                                               ; preds = %85
  %95 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %96 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %95, i32 0, i32 2
  %97 = call i32 @crypto_ahash_digest(i32* %96)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %90
  br label %120

99:                                               ; preds = %69
  %100 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %101 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %99
  %105 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %106 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %105, i32 0, i32 2
  %107 = call i32 @crypto_ahash_init(i32* %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %110 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %109, i32 0, i32 1
  %111 = call i32 @crypto_wait_req(i32 %108, i32* %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %134

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %99
  %117 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %118 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %117, i32 0, i32 2
  %119 = call i32 @crypto_ahash_update(i32* %118)
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %116, %98
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %123 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %122, i32 0, i32 1
  %124 = call i32 @crypto_wait_req(i32 %121, i32* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %134

128:                                              ; preds = %120
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @MSG_MORE, align 4
  %131 = and i32 %129, %130
  %132 = load %struct.hash_ctx*, %struct.hash_ctx** %13, align 8
  %133 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %128, %127, %114, %57
  %135 = load %struct.sock*, %struct.sock** %11, align 8
  %136 = call i32 @release_sock(%struct.sock* %135)
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = sext i32 %137 to i64
  br label %143

141:                                              ; preds = %134
  %142 = load i64, i64* %9, align 8
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i64 [ %140, %139 ], [ %142, %141 ]
  ret i64 %144
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @sg_set_page(i32, %struct.page*, i64, i32) #1

declare dso_local i32 @hash_alloc_result(%struct.sock*, %struct.hash_ctx*) #1

declare dso_local i32 @hash_free_result(%struct.sock*, %struct.hash_ctx*) #1

declare dso_local i32 @ahash_request_set_crypt(i32*, i32, i32, i64) #1

declare dso_local i32 @crypto_ahash_finup(i32*) #1

declare dso_local i32 @crypto_ahash_digest(i32*) #1

declare dso_local i32 @crypto_ahash_init(i32*) #1

declare dso_local i32 @crypto_wait_req(i32, i32*) #1

declare dso_local i32 @crypto_ahash_update(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
