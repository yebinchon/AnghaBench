; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_x9_62_setup_pubkey.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_x9_62_setup_pubkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_x9_62_keyex_context_t = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_x9_62_keyex_context_t*)* @x9_62_setup_pubkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x9_62_setup_pubkey(%struct.st_x9_62_keyex_context_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_x9_62_keyex_context_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  store %struct.st_x9_62_keyex_context_t* %0, %struct.st_x9_62_keyex_context_t** %3, align 8
  %8 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %3, align 8
  %9 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32* @EC_KEY_get0_group(i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %3, align 8
  %13 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @EC_KEY_get0_public_key(i32 %14)
  store i32* %15, i32** %5, align 8
  %16 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %3, align 8
  %17 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %3, align 8
  %22 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @x9_62_encode_point(i32* %19, i32* %20, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32* %24, i32** %25, align 8
  %26 = bitcast %struct.TYPE_4__* %18 to i8*
  %27 = bitcast %struct.TYPE_4__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 8, i1 false)
  %28 = bitcast %struct.TYPE_4__* %6 to i8*
  %29 = bitcast %struct.TYPE_4__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32* @EC_KEY_get0_group(i32) #1

declare dso_local i32* @EC_KEY_get0_public_key(i32) #1

declare dso_local i32* @x9_62_encode_point(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
