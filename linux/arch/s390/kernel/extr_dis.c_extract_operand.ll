; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dis.c_extract_operand.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dis.c_extract_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_operand = type { i32, i32, i32 }

@OPERAND_VR = common dso_local global i32 0, align 4
@OPERAND_SIGNED = common dso_local global i32 0, align 4
@OPERAND_PCREL = common dso_local global i32 0, align 4
@OPERAND_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.s390_operand*)* @extract_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_operand(i8* %0, %struct.s390_operand* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.s390_operand*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.s390_operand* %1, %struct.s390_operand** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %10 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %8, i64 %13
  store i8* %14, i8** %5, align 8
  %15 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %16 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 7
  %19 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %20 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %34, %2
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 8
  store i32 %25, i32* %6, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 8
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %23, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 0, %38
  %40 = load i32, i32* %6, align 4
  %41 = lshr i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %43 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = shl i32 1, %45
  %47 = shl i32 %46, 1
  %48 = sub i32 %47, 1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %52 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 20
  br i1 %54, label %55, label %68

55:                                               ; preds = %37
  %56 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %57 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 20
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 255
  %63 = shl i32 %62, 12
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 1048320
  %66 = lshr i32 %65, 8
  %67 = or i32 %63, %66
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %60, %55, %37
  %69 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %70 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @OPERAND_VR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %135

75:                                               ; preds = %68
  %76 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %77 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 8
  %86 = shl i32 %85, 1
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %134

89:                                               ; preds = %75
  %90 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %91 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 12
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 4
  %100 = shl i32 %99, 2
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %133

103:                                              ; preds = %89
  %104 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %105 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 16
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i8*, i8** %3, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 2
  %114 = shl i32 %113, 3
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %132

117:                                              ; preds = %103
  %118 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %119 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 32
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 1
  %128 = shl i32 %127, 4
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %122, %117
  br label %132

132:                                              ; preds = %131, %108
  br label %133

133:                                              ; preds = %132, %94
  br label %134

134:                                              ; preds = %133, %80
  br label %135

135:                                              ; preds = %134, %68
  %136 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %137 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @OPERAND_SIGNED, align 4
  %140 = load i32, i32* @OPERAND_PCREL, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %135
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %147 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 1
  %150 = shl i32 1, %149
  %151 = and i32 %145, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %144
  %154 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %155 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, 1
  %158 = shl i32 -1, %157
  %159 = shl i32 %158, 1
  %160 = load i32, i32* %6, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %153, %144, %135
  %163 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %164 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @OPERAND_PCREL, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load i32, i32* %6, align 4
  %171 = shl i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %169, %162
  %173 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %174 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @OPERAND_LENGTH, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load i32, i32* %6, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %179, %172
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
