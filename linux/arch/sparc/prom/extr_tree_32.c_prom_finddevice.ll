; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_32.c_prom_finddevice.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_32.c_prom_finddevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_prom_registers = type { i32, i32 }

@prom_root_node = common dso_local global i64 0, align 8
@PROMREG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @prom_finddevice(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i64, i64* @prom_root_node, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @PROMREG_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca %struct.linux_prom_registers, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  br label %20

20:                                               ; preds = %176, %1
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %177

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %2, align 8
  store i32 1, i32* %13, align 4
  br label %179

31:                                               ; preds = %25
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @prom_getchild(i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %52, %31
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 64
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 47
  br label %50

50:                                               ; preds = %45, %40, %35
  %51 = phi i1 [ false, %40 ], [ false, %35 ], [ %49, %45 ]
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  %55 = load i8, i8* %53, align 1
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  store i8 %55, i8* %56, align 1
  br label %35

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8
  store i8 0, i8* %59, align 1
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %62 = call i64 @prom_searchsiblings(i64 %60, i8* %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i64 0, i64* %2, align 8
  store i32 1, i32* %13, align 4
  br label %179

66:                                               ; preds = %58
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 64
  br i1 %70, label %71, label %176

71:                                               ; preds = %66
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isxdigit(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %159

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 44
  br i1 %82, label %83, label %159

83:                                               ; preds = %77
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = call i32 @simple_strtoul(i8* %85, i8** null, i32 16)
  store i32 %86, i32* %9, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  %89 = call i32 @simple_strtoul(i8* %88, i8** %6, i32 16)
  store i32 %89, i32* %10, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = icmp ne i8* %90, %92
  br i1 %93, label %94, label %158

94:                                               ; preds = %83
  %95 = load i8*, i8** %6, align 8
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 47
  br i1 %102, label %103, label %158

103:                                              ; preds = %98, %94
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  %108 = icmp ule i8* %104, %107
  br i1 %108, label %109, label %158

109:                                              ; preds = %103
  %110 = load i64, i64* %7, align 8
  store i64 %110, i64* %8, align 8
  br label %111

111:                                              ; preds = %152, %109
  %112 = load i64, i64* %8, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i64, i64* %8, align 8
  %116 = trunc i64 %115 to i32
  %117 = icmp ne i32 %116, -1
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi i1 [ false, %111 ], [ %117, %114 ]
  br i1 %119, label %120, label %157

120:                                              ; preds = %118
  %121 = load i64, i64* %8, align 8
  %122 = bitcast %struct.linux_prom_registers* %19 to i8*
  %123 = mul nuw i64 8, %17
  %124 = trunc i64 %123 to i32
  %125 = call i64 @prom_getproperty(i64 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %122, i32 %124)
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %120
  %128 = load i32, i32* %9, align 4
  %129 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %19, i64 0
  %130 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 16
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i32, i32* %10, align 4
  %135 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %19, i64 0
  %136 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i64, i64* %8, align 8
  store i64 %140, i64* %7, align 8
  br label %157

141:                                              ; preds = %133, %127
  br label %142

142:                                              ; preds = %141, %120
  %143 = load i64, i64* %8, align 8
  %144 = call i64 @prom_getsibling(i64 %143)
  store i64 %144, i64* %8, align 8
  %145 = load i64, i64* %8, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load i64, i64* %8, align 8
  %149 = trunc i64 %148 to i32
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %142
  br label %157

152:                                              ; preds = %147
  %153 = load i64, i64* %8, align 8
  %154 = call i64 @prom_getsibling(i64 %153)
  %155 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %156 = call i64 @prom_searchsiblings(i64 %154, i8* %155)
  store i64 %156, i64* %8, align 8
  br label %111

157:                                              ; preds = %151, %139, %118
  br label %158

158:                                              ; preds = %157, %103, %98, %83
  br label %159

159:                                              ; preds = %158, %77, %71
  br label %160

160:                                              ; preds = %172, %159
  %161 = load i8*, i8** %5, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %160
  %166 = load i8*, i8** %5, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 47
  br label %170

170:                                              ; preds = %165, %160
  %171 = phi i1 [ false, %160 ], [ %169, %165 ]
  br i1 %171, label %172, label %175

172:                                              ; preds = %170
  %173 = load i8*, i8** %5, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %5, align 8
  br label %160

175:                                              ; preds = %170
  br label %176

176:                                              ; preds = %175, %66
  br label %20

177:                                              ; preds = %20
  %178 = load i64, i64* %7, align 8
  store i64 %178, i64* %2, align 8
  store i32 1, i32* %13, align 4
  br label %179

179:                                              ; preds = %177, %65, %29
  %180 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i64, i64* %2, align 8
  ret i64 %181
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @prom_getchild(i64) #2

declare dso_local i64 @prom_searchsiblings(i64, i8*) #2

declare dso_local i64 @isxdigit(i8 signext) #2

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #2

declare dso_local i64 @prom_getproperty(i64, i8*, i8*, i32) #2

declare dso_local i64 @prom_getsibling(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
