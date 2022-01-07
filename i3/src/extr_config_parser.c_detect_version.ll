; ModuleID = '/home/carl/AnghaBench/i3/src/extr_config_parser.c_detect_version.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_config_parser.c_detect_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"bindcode\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"force_focus_wrapping\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"# i3 config file (v4)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"workspace_layout\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"deciding for version 4 due to this line: %.*s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"floating\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"focus left\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"focus right\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"focus up\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"focus down\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"border normal\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"border 1pixel\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"border pixel\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"border borderless\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"--no-startup-id\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @detect_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_version(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %197, %19, %1
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %201

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 10
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  br label %9

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = call i64 @strncasecmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strlen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i64 @strncasecmp(i8* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i64 @strncasecmp(i8* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i64 @strncasecmp(i8* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37, %32, %27, %22
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %48, i8* %49)
  store i32 4, i32* %2, align 4
  br label %202

51:                                               ; preds = %37
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i64 @strncasecmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %196

56:                                               ; preds = %51
  %57 = load i8*, i8** %5, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 32)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %197

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %80, %62
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 9
  br i1 %72, label %73, label %78

73:                                               ; preds = %68, %63
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ false, %68 ], [ %77, %73 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  br label %63

83:                                               ; preds = %78
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %197

89:                                               ; preds = %83
  %90 = load i8*, i8** %6, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 32)
  store i8* %91, i8** %6, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %197

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %112, %94
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i8*, i8** %6, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 9
  br i1 %104, label %105, label %110

105:                                              ; preds = %100, %95
  %106 = load i8*, i8** %6, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i1 [ false, %100 ], [ %109, %105 ]
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %6, align 8
  br label %95

115:                                              ; preds = %110
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %197

121:                                              ; preds = %115
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %124 = call i64 @strncasecmp(i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %186, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %129 = call i64 @strncasecmp(i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %186, label %131

131:                                              ; preds = %126
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %134 = call i64 @strncasecmp(i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %186, label %136

136:                                              ; preds = %131
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %139 = call i64 @strncasecmp(i8* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %186, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %144 = call i64 @strncasecmp(i8* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %186, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %149 = call i64 @strncasecmp(i8* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %148)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %186, label %151

151:                                              ; preds = %146
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %154 = call i64 @strncasecmp(i8* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %186, label %156

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %159 = call i64 @strncasecmp(i8* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %158)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %186, label %161

161:                                              ; preds = %156
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %164 = call i64 @strncasecmp(i8* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %163)
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %186, label %166

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %169 = call i64 @strncasecmp(i8* %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %168)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %186, label %171

171:                                              ; preds = %166
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %174 = call i64 @strncasecmp(i8* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %173)
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %171
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  %179 = call i64 @strncasecmp(i8* %177, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %184 = call i64 @strncasecmp(i8* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181, %176, %171, %166, %161, %156, %151, %146, %141, %136, %131, %126, %121
  %187 = load i8*, i8** %4, align 8
  %188 = load i8*, i8** %5, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = trunc i64 %191 to i32
  %193 = load i8*, i8** %5, align 8
  %194 = call i32 @LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %192, i8* %193)
  store i32 4, i32* %2, align 4
  br label %202

195:                                              ; preds = %181
  br label %196

196:                                              ; preds = %195, %51
  br label %197

197:                                              ; preds = %196, %120, %93, %88, %61
  %198 = load i8*, i8** %4, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %4, align 8
  %200 = load i8*, i8** %4, align 8
  store i8* %200, i8** %5, align 8
  br label %9

201:                                              ; preds = %9
  store i32 3, i32* %2, align 4
  br label %202

202:                                              ; preds = %201, %186, %42
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @LOG(i8*, i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
