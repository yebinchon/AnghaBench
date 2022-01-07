; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_cs_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_cs_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CS_STTIM0 = common dso_local global i64 0, align 8
@CS_TGRLD0 = common dso_local global i64 0, align 8
@CS_ERTHR0 = common dso_local global i64 0, align 8
@CS_ERTHR1 = common dso_local global i64 0, align 8
@CS_ERTHR2 = common dso_local global i64 0, align 8
@CS_ERTHR3 = common dso_local global i64 0, align 8
@CS_ERTHR4 = common dso_local global i64 0, align 8
@CS_ERCTL0 = common dso_local global i64 0, align 8
@CS_ERCTL1 = common dso_local global i64 0, align 8
@CS_ERCTL2 = common dso_local global i64 0, align 8
@CS_ERSTAT0 = common dso_local global i64 0, align 8
@CS_ERSTAT1 = common dso_local global i64 0, align 8
@CS_RTFWR = common dso_local global i64 0, align 8
@CS_RTATR = common dso_local global i64 0, align 8
@CS_TFBSET = common dso_local global i64 0, align 8
@CS_WCRMAX = common dso_local global i64 0, align 8
@CS_WCRMIN = common dso_local global i64 0, align 8
@CS_WCRINC = common dso_local global i64 0, align 8
@CS_WCRDEC = common dso_local global i64 0, align 8
@CS_WCRCEIL = common dso_local global i64 0, align 8
@CS_OTPPER = common dso_local global i64 0, align 8
@CS_OTWPER = common dso_local global i64 0, align 8
@CS_OTTLIM = common dso_local global i64 0, align 8
@CS_HGRRT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.he_dev*)* @he_init_cs_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @he_init_cs_block(%struct.he_dev* %0) #0 {
  %2 = alloca %struct.he_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.he_dev* %0, %struct.he_dev** %2, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %18, %1
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 32
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %13 = load i64, i64* @CS_STTIM0, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i32 @he_writel_mbox(%struct.he_dev* %12, i32 0, i64 %16)
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %23 = call i64 @he_is622(%struct.he_dev* %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 66667000, i32 50000000
  store i32 %26, i32* %3, align 4
  %27 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %28 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = udiv i32 %32, 16
  %34 = udiv i32 %33, 2
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %52, %21
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = udiv i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* @CS_TGRLD0, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = call i32 @he_writel_mbox(%struct.he_dev* %42, i32 %43, i64 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sub i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %35

55:                                               ; preds = %35
  %56 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %57 = call i64 @he_is622(%struct.he_dev* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %120

59:                                               ; preds = %55
  %60 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %61 = load i64, i64* @CS_ERTHR0, align 8
  %62 = call i32 @he_writel_mbox(%struct.he_dev* %60, i32 524538, i64 %61)
  %63 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %64 = load i64, i64* @CS_ERTHR1, align 8
  %65 = call i32 @he_writel_mbox(%struct.he_dev* %63, i32 799691, i64 %64)
  %66 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %67 = load i64, i64* @CS_ERTHR2, align 8
  %68 = call i32 @he_writel_mbox(%struct.he_dev* %66, i32 1052699, i64 %67)
  %69 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %70 = load i64, i64* @CS_ERTHR3, align 8
  %71 = call i32 @he_writel_mbox(%struct.he_dev* %69, i32 1580460, i64 %70)
  %72 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %73 = load i64, i64* @CS_ERTHR4, align 8
  %74 = call i32 @he_writel_mbox(%struct.he_dev* %72, i32 2622976, i64 %73)
  %75 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %76 = load i64, i64* @CS_ERCTL0, align 8
  %77 = call i32 @he_writel_mbox(%struct.he_dev* %75, i32 37611699, i64 %76)
  %78 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %79 = load i64, i64* @CS_ERCTL1, align 8
  %80 = call i32 @he_writel_mbox(%struct.he_dev* %78, i32 6145, i64 %79)
  %81 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %82 = load i64, i64* @CS_ERCTL2, align 8
  %83 = call i32 @he_writel_mbox(%struct.he_dev* %81, i32 26803, i64 %82)
  %84 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %85 = load i64, i64* @CS_ERSTAT0, align 8
  %86 = call i32 @he_writel_mbox(%struct.he_dev* %84, i32 4736, i64 %85)
  %87 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %88 = load i64, i64* @CS_ERSTAT1, align 8
  %89 = call i32 @he_writel_mbox(%struct.he_dev* %87, i32 26803, i64 %88)
  %90 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %91 = load i64, i64* @CS_RTFWR, align 8
  %92 = call i32 @he_writel_mbox(%struct.he_dev* %90, i32 83333, i64 %91)
  %93 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %94 = load i64, i64* @CS_RTATR, align 8
  %95 = call i32 @he_writel_mbox(%struct.he_dev* %93, i32 18048, i64 %94)
  %96 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %97 = load i64, i64* @CS_TFBSET, align 8
  %98 = call i32 @he_writel_mbox(%struct.he_dev* %96, i32 1416910, i64 %97)
  %99 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %100 = load i64, i64* @CS_WCRMAX, align 8
  %101 = call i32 @he_writel_mbox(%struct.he_dev* %99, i32 26803, i64 %100)
  %102 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %103 = load i64, i64* @CS_WCRMIN, align 8
  %104 = call i32 @he_writel_mbox(%struct.he_dev* %102, i32 24243, i64 %103)
  %105 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %106 = load i64, i64* @CS_WCRINC, align 8
  %107 = call i32 @he_writel_mbox(%struct.he_dev* %105, i32 59571, i64 %106)
  %108 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %109 = load i64, i64* @CS_WCRDEC, align 8
  %110 = call i32 @he_writel_mbox(%struct.he_dev* %108, i32 57011, i64 %109)
  %111 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %112 = load i64, i64* @CS_WCRCEIL, align 8
  %113 = call i32 @he_writel_mbox(%struct.he_dev* %111, i32 26803, i64 %112)
  %114 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %115 = load i64, i64* @CS_OTPPER, align 8
  %116 = call i32 @he_writel_mbox(%struct.he_dev* %114, i32 5, i64 %115)
  %117 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %118 = load i64, i64* @CS_OTWPER, align 8
  %119 = call i32 @he_writel_mbox(%struct.he_dev* %117, i32 20, i64 %118)
  br label %181

120:                                              ; preds = %55
  %121 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %122 = load i64, i64* @CS_ERTHR0, align 8
  %123 = call i32 @he_writel_mbox(%struct.he_dev* %121, i32 262378, i64 %122)
  %124 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %125 = load i64, i64* @CS_ERTHR1, align 8
  %126 = call i32 @he_writel_mbox(%struct.he_dev* %124, i32 406408, i64 %125)
  %127 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %128 = load i64, i64* @CS_ERTHR2, align 8
  %129 = call i32 @he_writel_mbox(%struct.he_dev* %127, i32 528408, i64 %128)
  %130 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %131 = load i64, i64* @CS_ERTHR3, align 8
  %132 = call i32 @he_writel_mbox(%struct.he_dev* %130, i32 794028, i64 %131)
  %133 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %134 = load i64, i64* @CS_ERTHR4, align 8
  %135 = call i32 @he_writel_mbox(%struct.he_dev* %133, i32 1312026, i64 %134)
  %136 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %137 = load i64, i64* @CS_ERCTL0, align 8
  %138 = call i32 @he_writel_mbox(%struct.he_dev* %136, i32 37086385, i64 %137)
  %139 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %140 = load i64, i64* @CS_ERCTL1, align 8
  %141 = call i32 @he_writel_mbox(%struct.he_dev* %139, i32 18177, i64 %140)
  %142 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %143 = load i64, i64* @CS_ERCTL2, align 8
  %144 = call i32 @he_writel_mbox(%struct.he_dev* %142, i32 25777, i64 %143)
  %145 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %146 = load i64, i64* @CS_ERSTAT0, align 8
  %147 = call i32 @he_writel_mbox(%struct.he_dev* %145, i32 4736, i64 %146)
  %148 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %149 = load i64, i64* @CS_ERSTAT1, align 8
  %150 = call i32 @he_writel_mbox(%struct.he_dev* %148, i32 25777, i64 %149)
  %151 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %152 = load i64, i64* @CS_RTFWR, align 8
  %153 = call i32 @he_writel_mbox(%struct.he_dev* %151, i32 62500, i64 %152)
  %154 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %155 = load i64, i64* @CS_RTATR, align 8
  %156 = call i32 @he_writel_mbox(%struct.he_dev* %154, i32 18048, i64 %155)
  %157 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %158 = load i64, i64* @CS_TFBSET, align 8
  %159 = call i32 @he_writel_mbox(%struct.he_dev* %157, i32 353207, i64 %158)
  %160 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %161 = load i64, i64* @CS_WCRMAX, align 8
  %162 = call i32 @he_writel_mbox(%struct.he_dev* %160, i32 25777, i64 %161)
  %163 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %164 = load i64, i64* @CS_WCRMIN, align 8
  %165 = call i32 @he_writel_mbox(%struct.he_dev* %163, i32 23217, i64 %164)
  %166 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %167 = load i64, i64* @CS_WCRINC, align 8
  %168 = call i32 @he_writel_mbox(%struct.he_dev* %166, i32 58545, i64 %167)
  %169 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %170 = load i64, i64* @CS_WCRDEC, align 8
  %171 = call i32 @he_writel_mbox(%struct.he_dev* %169, i32 55985, i64 %170)
  %172 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %173 = load i64, i64* @CS_WCRCEIL, align 8
  %174 = call i32 @he_writel_mbox(%struct.he_dev* %172, i32 25777, i64 %173)
  %175 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %176 = load i64, i64* @CS_OTPPER, align 8
  %177 = call i32 @he_writel_mbox(%struct.he_dev* %175, i32 6, i64 %176)
  %178 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %179 = load i64, i64* @CS_OTWPER, align 8
  %180 = call i32 @he_writel_mbox(%struct.he_dev* %178, i32 30, i64 %179)
  br label %181

181:                                              ; preds = %120, %59
  %182 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %183 = load i64, i64* @CS_OTTLIM, align 8
  %184 = call i32 @he_writel_mbox(%struct.he_dev* %182, i32 8, i64 %183)
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %195, %181
  %186 = load i32, i32* %6, align 4
  %187 = icmp slt i32 %186, 8
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = load %struct.he_dev*, %struct.he_dev** %2, align 8
  %190 = load i64, i64* @CS_HGRRT0, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %190, %192
  %194 = call i32 @he_writel_mbox(%struct.he_dev* %189, i32 0, i64 %193)
  br label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %185

198:                                              ; preds = %185
  ret void
}

declare dso_local i32 @he_writel_mbox(%struct.he_dev*, i32, i64) #1

declare dso_local i64 @he_is622(%struct.he_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
