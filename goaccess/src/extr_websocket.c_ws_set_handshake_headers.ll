; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_set_handshake_headers.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_set_handshake_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8*, i32, i32 }

@WS_MAGIC_STR = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@WS_SWITCH_PROTO_STR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"websocket\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Upgrade\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ws_set_handshake_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_set_handshake_headers(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strlen(i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i32, i32* @WS_MAGIC_STR, align 4
  %14 = call i64 @strlen(i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %18, %19
  %21 = add i64 %20, 1
  %22 = call i8* @xmalloc(i64 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %7, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %27 = call i32 @memset(i32* %26, i32 0, i32 4)
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @memcpy(i8* %28, i32 %31, i64 %32)
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i32, i32* @WS_MAGIC_STR, align 4
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  %40 = call i32 @memcpy(i8* %36, i32 %37, i64 %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @ws_sha1_digest(i8* %41, i64 %42, i32* %26)
  %44 = bitcast i32* %26 to i8*
  %45 = mul nuw i64 4, %24
  %46 = trunc i64 %45 to i32
  %47 = call i32 @base64_encode(i8* %44, i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** @WS_SWITCH_PROTO_STR, align 8
  %51 = call i8* @xstrdup(i8* %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %1
  %59 = call i8* @xstrdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = call i8* @xstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %74)
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @ws_sha1_digest(i8*, i64, i32*) #1

declare dso_local i32 @base64_encode(i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
