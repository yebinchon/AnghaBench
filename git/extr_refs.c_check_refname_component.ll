; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_check_refname_component.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_check_refname_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }

@refname_disposition = common dso_local global i8* null, align 8
@REFNAME_REFSPEC_PATTERN = common dso_local global i32 0, align 4
@LOCK_SUFFIX_LEN = common dso_local global i32 0, align 4
@LOCK_SUFFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.strbuf*)* @check_refname_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_refname_component(i8* %0, i32* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  store i8 0, i8* %9, align 1
  store i64 0, i64* %10, align 8
  %13 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %14 = icmp ne %struct.strbuf* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %15, %3
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %8, align 8
  br label %21

21:                                               ; preds = %125, %19
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, 255
  store i32 %25, i32* %11, align 4
  %26 = load i8*, i8** @refname_disposition, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %12, align 1
  %31 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %32 = icmp ne %struct.strbuf* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load i8, i8* %12, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @strbuf_addch(%struct.strbuf* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33, %21
  %42 = load i8, i8* %12, align 1
  %43 = zext i8 %42 to i32
  switch i32 %43, label %122 [
    i32 1, label %44
    i32 2, label %45
    i32 3, label %63
    i32 4, label %82
    i32 5, label %96
  ]

44:                                               ; preds = %41
  br label %128

45:                                               ; preds = %41
  %46 = load i8, i8* %9, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %51 = icmp ne %struct.strbuf* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %54 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i32 @strbuf_setlen(%struct.strbuf* %53, i32 %58)
  br label %61

60:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %188

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %45
  br label %122

63:                                               ; preds = %41
  %64 = load i8, i8* %9, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 64
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %69 = icmp ne %struct.strbuf* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, 1
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  store i8 45, i8* %78, align 1
  br label %80

79:                                               ; preds = %67
  store i32 -1, i32* %4, align 4
  br label %188

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %63
  br label %122

82:                                               ; preds = %41
  %83 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %84 = icmp ne %struct.strbuf* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %91, 1
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  store i8 45, i8* %93, align 1
  br label %95

94:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %188

95:                                               ; preds = %85
  br label %122

96:                                               ; preds = %41
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @REFNAME_REFSPEC_PATTERN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %96
  %103 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %104 = icmp ne %struct.strbuf* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %110 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds i8, i8* %108, i64 %112
  store i8 45, i8* %113, align 1
  br label %115

114:                                              ; preds = %102
  store i32 -1, i32* %4, align 4
  br label %188

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %96
  %117 = load i32, i32* @REFNAME_REFSPEC_PATTERN, align 4
  %118 = xor i32 %117, -1
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %118
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %41, %116, %95, %81, %62
  %123 = load i32, i32* %11, align 4
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %9, align 1
  br label %125

125:                                              ; preds = %122
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %8, align 8
  br label %21

128:                                              ; preds = %44
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = icmp eq i8* %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %188

133:                                              ; preds = %128
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 46
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %141 = icmp ne %struct.strbuf* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %144 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8 45, i8* %147, align 1
  br label %149

148:                                              ; preds = %139
  store i32 -1, i32* %4, align 4
  br label %188

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %133
  %151 = load i8*, i8** %8, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = load i32, i32* @LOCK_SUFFIX_LEN, align 4
  %157 = sext i32 %156 to i64
  %158 = icmp sge i64 %155, %157
  br i1 %158, label %159, label %181

159:                                              ; preds = %150
  %160 = load i8*, i8** %8, align 8
  %161 = load i32, i32* @LOCK_SUFFIX_LEN, align 4
  %162 = sext i32 %161 to i64
  %163 = sub i64 0, %162
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i32, i32* @LOCK_SUFFIX, align 4
  %166 = load i32, i32* @LOCK_SUFFIX_LEN, align 4
  %167 = call i32 @memcmp(i8* %164, i32 %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %159
  %170 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %171 = icmp ne %struct.strbuf* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  store i32 -1, i32* %4, align 4
  br label %188

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %179, %173
  %175 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %176 = load i32, i32* @LOCK_SUFFIX, align 4
  %177 = call i64 @strbuf_strip_suffix(%struct.strbuf* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %174

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %159, %150
  %182 = load i8*, i8** %8, align 8
  %183 = load i8*, i8** %5, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %181, %172, %148, %132, %114, %94, %79, %60
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i64 @strbuf_strip_suffix(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
