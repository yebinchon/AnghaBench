; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbinput.c_acpi_db_get_next_token.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbinput.c_acpi_db_get_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_db_get_next_token(i8* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %3
  store i8* null, i8** %4, align 8
  br label %189

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  br label %25

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i8* null, i8** %4, align 8
  br label %189

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %156 [
    i32 34, label %50
    i32 40, label %71
    i32 91, label %92
  ]

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %8, align 8
  %54 = load i32, i32* @ACPI_TYPE_STRING, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %67, %50
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 34
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  br label %55

70:                                               ; preds = %65
  br label %174

71:                                               ; preds = %46
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  store i8* %74, i8** %8, align 8
  %75 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %88, %71
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 41
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ false, %76 ], [ %85, %81 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  br label %76

91:                                               ; preds = %86
  br label %174

92:                                               ; preds = %46
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  store i32 1, i32* %9, align 4
  %95 = load i8*, i8** %5, align 8
  store i8* %95, i8** %8, align 8
  %96 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %152, %92
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %155

101:                                              ; preds = %97
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 34
  br i1 %105, label %106, label %130

106:                                              ; preds = %101
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %5, align 8
  br label %109

109:                                              ; preds = %121, %106
  %110 = load i8*, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 34
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i1 [ false, %109 ], [ %118, %114 ]
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %5, align 8
  br label %109

124:                                              ; preds = %119
  %125 = load i8*, i8** %5, align 8
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  br label %155

129:                                              ; preds = %124
  br label %152

130:                                              ; preds = %101
  %131 = load i8*, i8** %5, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 91
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %151

138:                                              ; preds = %130
  %139 = load i8*, i8** %5, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 93
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %155

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %138
  br label %151

151:                                              ; preds = %150, %135
  br label %152

152:                                              ; preds = %151, %129
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %5, align 8
  br label %97

155:                                              ; preds = %148, %128, %97
  br label %174

156:                                              ; preds = %46
  %157 = load i8*, i8** %5, align 8
  store i8* %157, i8** %8, align 8
  br label %158

158:                                              ; preds = %170, %156
  %159 = load i8*, i8** %5, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load i8*, i8** %5, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 32
  br label %168

168:                                              ; preds = %163, %158
  %169 = phi i1 [ false, %158 ], [ %167, %163 ]
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = load i8*, i8** %5, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %5, align 8
  br label %158

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %173, %155, %91, %70
  %175 = load i8*, i8** %5, align 8
  %176 = load i8, i8* %175, align 1
  %177 = icmp ne i8 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = load i8**, i8*** %6, align 8
  store i8* null, i8** %179, align 8
  br label %185

180:                                              ; preds = %174
  %181 = load i8*, i8** %5, align 8
  store i8 0, i8* %181, align 1
  %182 = load i8*, i8** %5, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load i8**, i8*** %6, align 8
  store i8* %183, i8** %184, align 8
  br label %185

185:                                              ; preds = %180, %178
  %186 = load i32, i32* %10, align 4
  %187 = load i32*, i32** %7, align 8
  store i32 %186, i32* %187, align 4
  %188 = load i8*, i8** %8, align 8
  store i8* %188, i8** %4, align 8
  br label %189

189:                                              ; preds = %185, %44, %18
  %190 = load i8*, i8** %4, align 8
  ret i8* %190
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
