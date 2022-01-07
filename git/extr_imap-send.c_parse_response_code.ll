; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_parse_response_code.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_parse_response_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imap_store = type { i8*, %struct.imap* }
%struct.imap = type { i8* }
%struct.imap_cmd_cb = type { i64 }

@RESP_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"IMAP error: malformed response code\0A\00", align 1
@RESP_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"IMAP error: empty response code\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"UIDVALIDITY\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"IMAP error: malformed UIDVALIDITY status\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"UIDNEXT\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"IMAP error: malformed NEXTUID status\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"CAPABILITY\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ALERT\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"*** IMAP ALERT *** %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"APPENDUID\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"IMAP error: malformed APPENDUID status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imap_store*, %struct.imap_cmd_cb*, i8*)* @parse_response_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_response_code(%struct.imap_store* %0, %struct.imap_cmd_cb* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imap_store*, align 8
  %6 = alloca %struct.imap_cmd_cb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.imap*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.imap_store* %0, %struct.imap_store** %5, align 8
  store %struct.imap_cmd_cb* %1, %struct.imap_cmd_cb** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.imap_store*, %struct.imap_store** %5, align 8
  %12 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %11, i32 0, i32 1
  %13 = load %struct.imap*, %struct.imap** %12, align 8
  store %struct.imap* %13, %struct.imap** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 91
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @RESP_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %149

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 93)
  store i8* %27, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @RESP_BAD, align 4
  store i32 %32, i32* %4, align 4
  br label %149

33:                                               ; preds = %23
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  store i8 0, i8* %34, align 1
  %36 = call i8* @next_arg(i8** %7)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @RESP_BAD, align 4
  store i32 %42, i32* %4, align 4
  br label %149

43:                                               ; preds = %33
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %43
  %48 = call i8* @next_arg(i8** %7)
  store i8* %48, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = call i8* @atoi(i8* %51)
  %53 = load %struct.imap_store*, %struct.imap_store** %5, align 8
  %54 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = icmp ne i8* %52, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @RESP_BAD, align 4
  store i32 %59, i32* %4, align 4
  br label %149

60:                                               ; preds = %50
  br label %147

61:                                               ; preds = %43
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %61
  %66 = call i8* @next_arg(i8** %7)
  store i8* %66, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i8*, i8** %9, align 8
  %70 = call i8* @atoi(i8* %69)
  %71 = load %struct.imap*, %struct.imap** %8, align 8
  %72 = getelementptr inbounds %struct.imap, %struct.imap* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = icmp ne i8* %70, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %68, %65
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @RESP_BAD, align 4
  store i32 %77, i32* %4, align 4
  br label %149

78:                                               ; preds = %68
  br label %146

79:                                               ; preds = %61
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load %struct.imap*, %struct.imap** %8, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @parse_capability(%struct.imap* %84, i8* %85)
  br label %145

87:                                               ; preds = %79
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %98, %91
  %93 = load i8*, i8** %10, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @isspace(i8 zeroext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  br label %92

101:                                              ; preds = %92
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  br label %144

105:                                              ; preds = %87
  %106 = load %struct.imap_cmd_cb*, %struct.imap_cmd_cb** %6, align 8
  %107 = icmp ne %struct.imap_cmd_cb* %106, null
  br i1 %107, label %108, label %143

108:                                              ; preds = %105
  %109 = load %struct.imap_cmd_cb*, %struct.imap_cmd_cb** %6, align 8
  %110 = getelementptr inbounds %struct.imap_cmd_cb, %struct.imap_cmd_cb* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %108
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %143, label %117

117:                                              ; preds = %113
  %118 = call i8* @next_arg(i8** %7)
  store i8* %118, i8** %9, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load i8*, i8** %9, align 8
  %122 = call i8* @atoi(i8* %121)
  %123 = load %struct.imap_store*, %struct.imap_store** %5, align 8
  %124 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = icmp ne i8* %122, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %120
  %127 = call i8* @next_arg(i8** %7)
  store i8* %127, i8** %9, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i8*, i8** %9, align 8
  %131 = call i8* @atoi(i8* %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.imap_cmd_cb*, %struct.imap_cmd_cb** %6, align 8
  %134 = getelementptr inbounds %struct.imap_cmd_cb, %struct.imap_cmd_cb* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i32*
  store i32 %132, i32* %136, align 4
  %137 = icmp ne i32 %132, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %129, %126, %120, %117
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %141 = load i32, i32* @RESP_BAD, align 4
  store i32 %141, i32* %4, align 4
  br label %149

142:                                              ; preds = %129
  br label %143

143:                                              ; preds = %142, %113, %108, %105
  br label %144

144:                                              ; preds = %143, %101
  br label %145

145:                                              ; preds = %144, %83
  br label %146

146:                                              ; preds = %145, %78
  br label %147

147:                                              ; preds = %146, %60
  %148 = load i32, i32* @RESP_OK, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %138, %74, %56, %39, %29, %21
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @next_arg(i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @parse_capability(%struct.imap*, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
