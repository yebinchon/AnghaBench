; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_openpic_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_openpic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@GCR_RESET = common dso_local global i64 0, align 8
@FRR_NIRQ_SHIFT = common dso_local global i32 0, align 4
@FRR_VID_SHIFT = common dso_local global i32 0, align 4
@IVPR_SENSE_MASK = common dso_local global i32 0, align 4
@IVPR_POLARITY_MASK = common dso_local global i32 0, align 4
@MAX_CPU = common dso_local global i32 0, align 4
@MAX_TMR = common dso_local global i32 0, align 4
@TBCR_CI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.openpic*)* @openpic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openpic_reset(%struct.openpic* %0) #0 {
  %2 = alloca %struct.openpic*, align 8
  %3 = alloca i32, align 4
  store %struct.openpic* %0, %struct.openpic** %2, align 8
  %4 = load i64, i64* @GCR_RESET, align 8
  %5 = load %struct.openpic*, %struct.openpic** %2, align 8
  %6 = getelementptr inbounds %struct.openpic, %struct.openpic* %5, i32 0, i32 7
  store i64 %4, i64* %6, align 8
  %7 = load %struct.openpic*, %struct.openpic** %2, align 8
  %8 = getelementptr inbounds %struct.openpic, %struct.openpic* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* @FRR_NIRQ_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load %struct.openpic*, %struct.openpic** %2, align 8
  %14 = getelementptr inbounds %struct.openpic, %struct.openpic* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FRR_VID_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %12, %17
  %19 = load %struct.openpic*, %struct.openpic** %2, align 8
  %20 = getelementptr inbounds %struct.openpic, %struct.openpic* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.openpic*, %struct.openpic** %2, align 8
  %22 = getelementptr inbounds %struct.openpic, %struct.openpic* %21, i32 0, i32 14
  store i64 0, i64* %22, align 8
  %23 = load %struct.openpic*, %struct.openpic** %2, align 8
  %24 = getelementptr inbounds %struct.openpic, %struct.openpic* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = and i32 -1, %25
  %27 = load %struct.openpic*, %struct.openpic** %2, align 8
  %28 = getelementptr inbounds %struct.openpic, %struct.openpic* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.openpic*, %struct.openpic** %2, align 8
  %30 = getelementptr inbounds %struct.openpic, %struct.openpic* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.openpic*, %struct.openpic** %2, align 8
  %33 = getelementptr inbounds %struct.openpic, %struct.openpic* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %95, %1
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.openpic*, %struct.openpic** %2, align 8
  %37 = getelementptr inbounds %struct.openpic, %struct.openpic* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %98

40:                                               ; preds = %34
  %41 = load %struct.openpic*, %struct.openpic** %2, align 8
  %42 = getelementptr inbounds %struct.openpic, %struct.openpic* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.openpic*, %struct.openpic** %2, align 8
  %45 = getelementptr inbounds %struct.openpic, %struct.openpic* %44, i32 0, i32 11
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 4
  %51 = load %struct.openpic*, %struct.openpic** %2, align 8
  %52 = getelementptr inbounds %struct.openpic, %struct.openpic* %51, i32 0, i32 11
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %88 [
    i32 128, label %59
    i32 130, label %76
    i32 129, label %87
  ]

59:                                               ; preds = %40
  %60 = load %struct.openpic*, %struct.openpic** %2, align 8
  %61 = getelementptr inbounds %struct.openpic, %struct.openpic* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IVPR_SENSE_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.openpic*, %struct.openpic** %2, align 8
  %70 = getelementptr inbounds %struct.openpic, %struct.openpic* %69, i32 0, i32 11
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32 %68, i32* %75, align 4
  br label %88

76:                                               ; preds = %40
  %77 = load i32, i32* @IVPR_POLARITY_MASK, align 4
  %78 = load %struct.openpic*, %struct.openpic** %2, align 8
  %79 = getelementptr inbounds %struct.openpic, %struct.openpic* %78, i32 0, i32 11
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %77
  store i32 %86, i32* %84, align 4
  br label %88

87:                                               ; preds = %40
  br label %88

88:                                               ; preds = %40, %87, %76, %59
  %89 = load %struct.openpic*, %struct.openpic** %2, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.openpic*, %struct.openpic** %2, align 8
  %92 = getelementptr inbounds %struct.openpic, %struct.openpic* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @write_IRQreg_idr(%struct.openpic* %89, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %34

98:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %143, %98
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @MAX_CPU, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %146

103:                                              ; preds = %99
  %104 = load %struct.openpic*, %struct.openpic** %2, align 8
  %105 = getelementptr inbounds %struct.openpic, %struct.openpic* %104, i32 0, i32 9
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 15, i32* %110, align 4
  %111 = load %struct.openpic*, %struct.openpic** %2, align 8
  %112 = getelementptr inbounds %struct.openpic, %struct.openpic* %111, i32 0, i32 9
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = call i32 @memset(%struct.TYPE_8__* %117, i32 0, i32 4)
  %119 = load %struct.openpic*, %struct.openpic** %2, align 8
  %120 = getelementptr inbounds %struct.openpic, %struct.openpic* %119, i32 0, i32 9
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 -1, i32* %126, align 4
  %127 = load %struct.openpic*, %struct.openpic** %2, align 8
  %128 = getelementptr inbounds %struct.openpic, %struct.openpic* %127, i32 0, i32 9
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = call i32 @memset(%struct.TYPE_8__* %133, i32 0, i32 4)
  %135 = load %struct.openpic*, %struct.openpic** %2, align 8
  %136 = getelementptr inbounds %struct.openpic, %struct.openpic* %135, i32 0, i32 9
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32 -1, i32* %142, align 4
  br label %143

143:                                              ; preds = %103
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %99

146:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %167, %146
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @MAX_TMR, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %147
  %152 = load %struct.openpic*, %struct.openpic** %2, align 8
  %153 = getelementptr inbounds %struct.openpic, %struct.openpic* %152, i32 0, i32 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  store i64 0, i64* %158, align 8
  %159 = load i32, i32* @TBCR_CI, align 4
  %160 = load %struct.openpic*, %struct.openpic** %2, align 8
  %161 = getelementptr inbounds %struct.openpic, %struct.openpic* %160, i32 0, i32 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  store i32 %159, i32* %166, align 8
  br label %167

167:                                              ; preds = %151
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %147

170:                                              ; preds = %147
  %171 = load %struct.openpic*, %struct.openpic** %2, align 8
  %172 = getelementptr inbounds %struct.openpic, %struct.openpic* %171, i32 0, i32 7
  store i64 0, i64* %172, align 8
  ret void
}

declare dso_local i32 @write_IRQreg_idr(%struct.openpic*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
