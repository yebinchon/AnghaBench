; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_format_person_part.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_format_person_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.date_mode = type { i32 }
%struct.ident_split = type { i8*, i8*, i8*, i8*, i8*, i8* }

@RFC2822 = common dso_local global i32 0, align 4
@RELATIVE = common dso_local global i32 0, align 4
@ISO8601 = common dso_local global i32 0, align 4
@ISO8601_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.strbuf*, i8, i8*, i32, %struct.date_mode*)* @format_person_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @format_person_part(%struct.strbuf* %0, i8 signext %1, i8* %2, i32 %3, %struct.date_mode* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.date_mode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ident_split, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.date_mode* %4, %struct.date_mode** %11, align 8
  store i32 2, i32* %12, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @split_ident_line(%struct.ident_split* %13, i8* %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %165

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %14, align 8
  %27 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = ptrtoint i8* %28 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %17, align 8
  %34 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %15, align 8
  %36 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = ptrtoint i8* %37 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  store i64 %42, i64* %16, align 8
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 78
  br i1 %45, label %54, label %46

46:                                               ; preds = %24
  %47 = load i8, i8* %8, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 69
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i8, i8* %8, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 76
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46, %24
  %55 = call i32 @mailmap_name(i8** %15, i64* %16, i8** %14, i64* %17)
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i8, i8* %8, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 110
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8, i8* %8, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 78
  br i1 %63, label %64, label %70

64:                                               ; preds = %60, %56
  %65 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i64, i64* %17, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @strbuf_add(%struct.strbuf* %65, i8* %66, i32 %68)
  store i64 2, i64* %6, align 8
  br label %195

70:                                               ; preds = %60
  %71 = load i8, i8* %8, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 101
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i8, i8* %8, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 69
  br i1 %77, label %78, label %84

78:                                               ; preds = %74, %70
  %79 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load i64, i64* %16, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @strbuf_add(%struct.strbuf* %79, i8* %80, i32 %82)
  store i64 2, i64* %6, align 8
  br label %195

84:                                               ; preds = %74
  %85 = load i8, i8* %8, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 108
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8, i8* %8, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 76
  br i1 %91, label %92, label %110

92:                                               ; preds = %88, %84
  %93 = load i8*, i8** %15, align 8
  %94 = load i64, i64* %16, align 8
  %95 = call i8* @memchr(i8* %93, i8 signext 64, i64 %94)
  store i8* %95, i8** %18, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i8*, i8** %18, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  store i64 %103, i64* %16, align 8
  br label %104

104:                                              ; preds = %98, %92
  %105 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @strbuf_add(%struct.strbuf* %105, i8* %106, i32 %108)
  store i64 2, i64* %6, align 8
  br label %195

110:                                              ; preds = %88
  %111 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  br label %165

115:                                              ; preds = %110
  %116 = load i8, i8* %8, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 116
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %121 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 4
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 5
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = ptrtoint i8* %124 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = call i32 @strbuf_add(%struct.strbuf* %120, i8* %122, i32 %130)
  store i64 2, i64* %6, align 8
  br label %195

132:                                              ; preds = %115
  %133 = load i8, i8* %8, align 1
  %134 = sext i8 %133 to i32
  switch i32 %134, label %164 [
    i32 100, label %135
    i32 68, label %140
    i32 114, label %146
    i32 105, label %152
    i32 73, label %158
  ]

135:                                              ; preds = %132
  %136 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %137 = load %struct.date_mode*, %struct.date_mode** %11, align 8
  %138 = call i32 @show_ident_date(%struct.ident_split* %13, %struct.date_mode* %137)
  %139 = call i32 @strbuf_addstr(%struct.strbuf* %136, i32 %138)
  store i64 2, i64* %6, align 8
  br label %195

140:                                              ; preds = %132
  %141 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %142 = load i32, i32* @RFC2822, align 4
  %143 = call %struct.date_mode* @DATE_MODE(i32 %142)
  %144 = call i32 @show_ident_date(%struct.ident_split* %13, %struct.date_mode* %143)
  %145 = call i32 @strbuf_addstr(%struct.strbuf* %141, i32 %144)
  store i64 2, i64* %6, align 8
  br label %195

146:                                              ; preds = %132
  %147 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %148 = load i32, i32* @RELATIVE, align 4
  %149 = call %struct.date_mode* @DATE_MODE(i32 %148)
  %150 = call i32 @show_ident_date(%struct.ident_split* %13, %struct.date_mode* %149)
  %151 = call i32 @strbuf_addstr(%struct.strbuf* %147, i32 %150)
  store i64 2, i64* %6, align 8
  br label %195

152:                                              ; preds = %132
  %153 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %154 = load i32, i32* @ISO8601, align 4
  %155 = call %struct.date_mode* @DATE_MODE(i32 %154)
  %156 = call i32 @show_ident_date(%struct.ident_split* %13, %struct.date_mode* %155)
  %157 = call i32 @strbuf_addstr(%struct.strbuf* %153, i32 %156)
  store i64 2, i64* %6, align 8
  br label %195

158:                                              ; preds = %132
  %159 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %160 = load i32, i32* @ISO8601_STRICT, align 4
  %161 = call %struct.date_mode* @DATE_MODE(i32 %160)
  %162 = call i32 @show_ident_date(%struct.ident_split* %13, %struct.date_mode* %161)
  %163 = call i32 @strbuf_addstr(%struct.strbuf* %159, i32 %162)
  store i64 2, i64* %6, align 8
  br label %195

164:                                              ; preds = %132
  br label %165

165:                                              ; preds = %164, %114, %23
  %166 = load i8, i8* %8, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 110
  br i1 %168, label %193, label %169

169:                                              ; preds = %165
  %170 = load i8, i8* %8, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 101
  br i1 %172, label %193, label %173

173:                                              ; preds = %169
  %174 = load i8, i8* %8, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 116
  br i1 %176, label %193, label %177

177:                                              ; preds = %173
  %178 = load i8, i8* %8, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 100
  br i1 %180, label %193, label %181

181:                                              ; preds = %177
  %182 = load i8, i8* %8, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 68
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = load i8, i8* %8, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 114
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i8, i8* %8, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 105
  br i1 %192, label %193, label %194

193:                                              ; preds = %189, %185, %181, %177, %173, %169, %165
  store i64 2, i64* %6, align 8
  br label %195

194:                                              ; preds = %189
  store i64 0, i64* %6, align 8
  br label %195

195:                                              ; preds = %194, %193, %158, %152, %146, %140, %135, %119, %104, %78, %64
  %196 = load i64, i64* %6, align 8
  ret i64 %196
}

declare dso_local i64 @split_ident_line(%struct.ident_split*, i8*, i32) #1

declare dso_local i32 @mailmap_name(i8**, i64*, i8**, i64*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @show_ident_date(%struct.ident_split*, %struct.date_mode*) #1

declare dso_local %struct.date_mode* @DATE_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
