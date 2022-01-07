; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_can_boost.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_can_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@twobyte_is_boostable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_boost(%struct.insn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.insn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.insn* %0, %struct.insn** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = call i64 @search_exception_tables(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %118

12:                                               ; preds = %2
  %13 = load %struct.insn*, %struct.insn** %4, align 8
  %14 = getelementptr inbounds %struct.insn, %struct.insn* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.insn*, %struct.insn** %4, align 8
  %20 = getelementptr inbounds %struct.insn, %struct.insn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @twobyte_is_boostable, align 8
  %26 = inttoptr i64 %25 to i64*
  %27 = call i32 @test_bit(i32 %24, i64* %26)
  store i32 %27, i32* %3, align 4
  br label %118

28:                                               ; preds = %12
  %29 = load %struct.insn*, %struct.insn** %4, align 8
  %30 = getelementptr inbounds %struct.insn, %struct.insn* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %118

35:                                               ; preds = %28
  %36 = load %struct.insn*, %struct.insn** %4, align 8
  %37 = getelementptr inbounds %struct.insn, %struct.insn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @inat_is_address_size_prefix(i32 %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %118

43:                                               ; preds = %35
  %44 = load %struct.insn*, %struct.insn** %4, align 8
  %45 = getelementptr inbounds %struct.insn, %struct.insn* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 240
  switch i32 %51, label %109 [
    i32 96, label %52
    i32 112, label %56
    i32 144, label %57
    i32 192, label %61
    i32 208, label %73
    i32 224, label %85
    i32 240, label %95
  ]

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 98
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %118

56:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %118

57:                                               ; preds = %43
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 154
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  br label %118

61:                                               ; preds = %43
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 193, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 204
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 207
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ true, %64 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %118

73:                                               ; preds = %43
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 212
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 213
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 215
  br label %82

82:                                               ; preds = %79, %76, %73
  %83 = phi i1 [ true, %76 ], [ true, %73 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %3, align 4
  br label %118

85:                                               ; preds = %43
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 234
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i1 [ true, %85 ], [ %91, %89 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %118

95:                                               ; preds = %43
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 245
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 247, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 254
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i1 [ false, %98 ], [ %103, %101 ]
  br label %106

106:                                              ; preds = %104, %95
  %107 = phi i1 [ true, %95 ], [ %105, %104 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %3, align 4
  br label %118

109:                                              ; preds = %43
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 46
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 154
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi i1 [ false, %109 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %106, %92, %82, %70, %57, %56, %52, %42, %34, %18, %11
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @search_exception_tables(i64) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inat_is_address_size_prefix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
