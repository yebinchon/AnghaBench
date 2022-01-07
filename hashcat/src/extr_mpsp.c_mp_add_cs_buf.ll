; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mp_add_cs_buf.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mp_add_cs_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64* }

@CHARSIZ = common dso_local global i32 0, align 4
@OPTS_TYPE_PT_UPPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64*, i64, %struct.TYPE_8__*, i64)* @mp_add_cs_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_add_cs_buf(%struct.TYPE_7__* %0, i64* %1, i64 %2, %struct.TYPE_8__* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %11, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %22
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %12, align 8
  %24 = load i32, i32* @CHARSIZ, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = call i64 @hcmalloc(i64 %27)
  %29 = inttoptr i64 %28 to i64*
  store i64* %29, i64** %14, align 8
  store i64 0, i64* %15, align 8
  br label %30

30:                                               ; preds = %46, %5
  %31 = load i64, i64* %15, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %16, align 8
  %43 = load i64*, i64** %14, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 1, i64* %45, align 8
  br label %46

46:                                               ; preds = %36
  %47 = load i64, i64* %15, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %15, align 8
  br label %30

49:                                               ; preds = %30
  store i64 0, i64* %15, align 8
  br label %50

50:                                               ; preds = %92, %49
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %50
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %58, 255
  store i64 %59, i64* %17, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @OPTS_TYPE_PT_UPPER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i64, i64* %17, align 8
  %68 = call i64 @toupper(i64 %67)
  store i64 %68, i64* %17, align 8
  br label %69

69:                                               ; preds = %66, %54
  %70 = load i64*, i64** %14, align 8
  %71 = load i64, i64* %17, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %92

76:                                               ; preds = %69
  %77 = load i64*, i64** %14, align 8
  %78 = load i64, i64* %17, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 1, i64* %79, align 8
  %80 = load i64, i64* %17, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  store i64 %80, i64* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %76, %75
  %93 = load i64, i64* %15, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %15, align 8
  br label %50

95:                                               ; preds = %50
  %96 = load i64*, i64** %14, align 8
  %97 = call i32 @hcfree(i64* %96)
  ret i32 0
}

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i64 @toupper(i64) #1

declare dso_local i32 @hcfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
