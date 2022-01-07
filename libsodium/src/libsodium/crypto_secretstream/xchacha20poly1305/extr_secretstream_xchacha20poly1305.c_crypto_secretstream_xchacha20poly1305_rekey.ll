; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_secretstream/xchacha20poly1305/extr_secretstream_xchacha20poly1305.c_crypto_secretstream_xchacha20poly1305_rekey.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_secretstream/xchacha20poly1305/extr_secretstream_xchacha20poly1305.c_crypto_secretstream_xchacha20poly1305_rekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@crypto_stream_chacha20_ietf_KEYBYTES = common dso_local global i32 0, align 4
@crypto_secretstream_xchacha20poly1305_INONCEBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crypto_secretstream_xchacha20poly1305_rekey(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load i32, i32* @crypto_stream_chacha20_ietf_KEYBYTES, align 4
  %7 = load i32, i32* @crypto_secretstream_xchacha20poly1305_INONCEBYTES, align 4
  %8 = add nsw i32 %6, %7
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* @crypto_stream_chacha20_ietf_KEYBYTES, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i8, i8* %11, i64 %24
  store i8 %23, i8* %25, align 1
  br label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %12

29:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* @crypto_secretstream_xchacha20poly1305_INONCEBYTES, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = call i8* @STATE_INONCE(%struct.TYPE_5__* %36)
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i32, i32* @crypto_stream_chacha20_ietf_KEYBYTES, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %42, %43
  %45 = getelementptr inbounds i8, i8* %11, i64 %44
  store i8 %40, i8* %45, align 1
  br label %46

46:                                               ; preds = %35
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %30

49:                                               ; preds = %30
  %50 = trunc i64 %9 to i32
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @crypto_stream_chacha20_ietf_xor(i8* %11, i8* %11, i32 %50, i32 %53, i8* %56)
  store i64 0, i64* %5, align 8
  br label %58

58:                                               ; preds = %72, %49
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* @crypto_stream_chacha20_ietf_KEYBYTES, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i8, i8* %11, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 %66, i8* %71, align 1
  br label %72

72:                                               ; preds = %63
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  br label %58

75:                                               ; preds = %58
  store i64 0, i64* %5, align 8
  br label %76

76:                                               ; preds = %92, %75
  %77 = load i64, i64* %5, align 8
  %78 = load i32, i32* @crypto_secretstream_xchacha20poly1305_INONCEBYTES, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %77, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load i32, i32* @crypto_stream_chacha20_ietf_KEYBYTES, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %5, align 8
  %85 = add i64 %83, %84
  %86 = getelementptr inbounds i8, i8* %11, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = call i8* @STATE_INONCE(%struct.TYPE_5__* %88)
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8 %87, i8* %91, align 1
  br label %92

92:                                               ; preds = %81
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %5, align 8
  br label %76

95:                                               ; preds = %76
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = call i32 @_crypto_secretstream_xchacha20poly1305_counter_reset(%struct.TYPE_5__* %96)
  %98 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %98)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @STATE_INONCE(%struct.TYPE_5__*) #2

declare dso_local i32 @crypto_stream_chacha20_ietf_xor(i8*, i8*, i32, i32, i8*) #2

declare dso_local i32 @_crypto_secretstream_xchacha20poly1305_counter_reset(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
