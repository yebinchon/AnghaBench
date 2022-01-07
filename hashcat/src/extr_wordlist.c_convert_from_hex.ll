; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_wordlist.c_convert_from_hex.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_wordlist.c_convert_from_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@OPTS_TYPE_PT_HEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_from_hex(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = and i64 %19, 1
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %4, align 8
  br label %82

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OPTS_TYPE_PT_HEX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = bitcast i8* %39 to i32*
  %41 = call signext i8 @hex_to_u8(i32* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %41, i8* %44, align 1
  br label %45

45:                                               ; preds = %36
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, 2
  store i64 %49, i64* %11, align 8
  br label %32

50:                                               ; preds = %32
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %54, %55
  %57 = call i32 @memset(i8* %53, i32 0, i64 %56)
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %4, align 8
  br label %82

59:                                               ; preds = %24
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @is_hexify(i32* %66, i64 %67)
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load i8*, i8** %6, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = load i64, i64* %7, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @exec_unhexify(i32* %72, i64 %73, i32* %75, i64 %76)
  store i64 %77, i64* %12, align 8
  %78 = load i64, i64* %12, align 8
  store i64 %78, i64* %4, align 8
  br label %82

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %70, %50, %22
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local signext i8 @hex_to_u8(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @is_hexify(i32*, i64) #1

declare dso_local i64 @exec_unhexify(i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
