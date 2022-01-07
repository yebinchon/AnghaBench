; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_ident.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.fsck_options = type { i32 }

@FSCK_MSG_MISSING_NAME_BEFORE_EMAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"invalid author/committer line - missing space before email\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"<>\0A\00", align 1
@FSCK_MSG_BAD_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"invalid author/committer line - bad name\00", align 1
@FSCK_MSG_MISSING_EMAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"invalid author/committer line - missing email\00", align 1
@FSCK_MSG_MISSING_SPACE_BEFORE_EMAIL = common dso_local global i32 0, align 4
@FSCK_MSG_BAD_EMAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"invalid author/committer line - bad email\00", align 1
@FSCK_MSG_MISSING_SPACE_BEFORE_DATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"invalid author/committer line - missing space before date\00", align 1
@FSCK_MSG_ZERO_PADDED_DATE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"invalid author/committer line - zero-padded date\00", align 1
@FSCK_MSG_BAD_DATE_OVERFLOW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"invalid author/committer line - date causes integer overflow\00", align 1
@FSCK_MSG_BAD_DATE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"invalid author/committer line - bad date\00", align 1
@FSCK_MSG_BAD_TIMEZONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"invalid author/committer line - bad time zone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.object*, %struct.fsck_options*)* @fsck_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_ident(i8** %0, %struct.object* %1, %struct.fsck_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca %struct.fsck_options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store %struct.object* %1, %struct.object** %6, align 8
  store %struct.fsck_options* %2, %struct.fsck_options** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @strchrnul(i8* %13, i8 signext 10)
  %15 = load i8**, i8*** %5, align 8
  store i8* %14, i8** %15, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %22, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 60
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %32 = load %struct.object*, %struct.object** %6, align 8
  %33 = load i32, i32* @FSCK_MSG_MISSING_NAME_BEFORE_EMAIL, align 4
  %34 = call i32 @report(%struct.fsck_options* %31, %struct.object* %32, i32 %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  br label %192

35:                                               ; preds = %25
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @strcspn(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** %8, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 62
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %47 = load %struct.object*, %struct.object** %6, align 8
  %48 = load i32, i32* @FSCK_MSG_BAD_NAME, align 4
  %49 = call i32 @report(%struct.fsck_options* %46, %struct.object* %47, i32 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* %4, align 4
  br label %192

50:                                               ; preds = %35
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 60
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %57 = load %struct.object*, %struct.object** %6, align 8
  %58 = load i32, i32* @FSCK_MSG_MISSING_EMAIL, align 4
  %59 = call i32 @report(%struct.fsck_options* %56, %struct.object* %57, i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  br label %192

60:                                               ; preds = %50
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 32
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %68 = load %struct.object*, %struct.object** %6, align 8
  %69 = load i32, i32* @FSCK_MSG_MISSING_SPACE_BEFORE_EMAIL, align 4
  %70 = call i32 @report(%struct.fsck_options* %67, %struct.object* %68, i32 %69, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 %70, i32* %4, align 4
  br label %192

71:                                               ; preds = %60
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strcspn(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i8*, i8** %8, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 62
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %85 = load %struct.object*, %struct.object** %6, align 8
  %86 = load i32, i32* @FSCK_MSG_BAD_EMAIL, align 4
  %87 = call i32 @report(%struct.fsck_options* %84, %struct.object* %85, i32 %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 %87, i32* %4, align 4
  br label %192

88:                                               ; preds = %71
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 32
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %97 = load %struct.object*, %struct.object** %6, align 8
  %98 = load i32, i32* @FSCK_MSG_MISSING_SPACE_BEFORE_DATE, align 4
  %99 = call i32 @report(%struct.fsck_options* %96, %struct.object* %97, i32 %98, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  store i32 %99, i32* %4, align 4
  br label %192

100:                                              ; preds = %88
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 48
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 32
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %115 = load %struct.object*, %struct.object** %6, align 8
  %116 = load i32, i32* @FSCK_MSG_ZERO_PADDED_DATE, align 4
  %117 = call i32 @report(%struct.fsck_options* %114, %struct.object* %115, i32 %116, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  store i32 %117, i32* %4, align 4
  br label %192

118:                                              ; preds = %107, %100
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @parse_timestamp(i8* %119, i8** %9, i32 10)
  %121 = call i64 @date_overflows(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %125 = load %struct.object*, %struct.object** %6, align 8
  %126 = load i32, i32* @FSCK_MSG_BAD_DATE_OVERFLOW, align 4
  %127 = call i32 @report(%struct.fsck_options* %124, %struct.object* %125, i32 %126, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  store i32 %127, i32* %4, align 4
  br label %192

128:                                              ; preds = %118
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = icmp eq i8* %129, %130
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %9, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 32
  br i1 %136, label %137, label %142

137:                                              ; preds = %132, %128
  %138 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %139 = load %struct.object*, %struct.object** %6, align 8
  %140 = load i32, i32* @FSCK_MSG_BAD_DATE, align 4
  %141 = call i32 @report(%struct.fsck_options* %138, %struct.object* %139, i32 %140, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  store i32 %141, i32* %4, align 4
  br label %192

142:                                              ; preds = %132
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8* %144, i8** %8, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 43
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load i8*, i8** %8, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 45
  br i1 %153, label %184, label %154

154:                                              ; preds = %149, %142
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = call i32 @isdigit(i8 signext %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %184

160:                                              ; preds = %154
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 2
  %163 = load i8, i8* %162, align 1
  %164 = call i32 @isdigit(i8 signext %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %160
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 3
  %169 = load i8, i8* %168, align 1
  %170 = call i32 @isdigit(i8 signext %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %166
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 4
  %175 = load i8, i8* %174, align 1
  %176 = call i32 @isdigit(i8 signext %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load i8*, i8** %8, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 5
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 10
  br i1 %183, label %184, label %189

184:                                              ; preds = %178, %172, %166, %160, %154, %149
  %185 = load %struct.fsck_options*, %struct.fsck_options** %7, align 8
  %186 = load %struct.object*, %struct.object** %6, align 8
  %187 = load i32, i32* @FSCK_MSG_BAD_TIMEZONE, align 4
  %188 = call i32 @report(%struct.fsck_options* %185, %struct.object* %186, i32 %187, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  store i32 %188, i32* %4, align 4
  br label %192

189:                                              ; preds = %178
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 6
  store i8* %191, i8** %8, align 8
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %189, %184, %137, %123, %113, %95, %83, %66, %55, %45, %30
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @report(%struct.fsck_options*, %struct.object*, i32, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i64 @date_overflows(i32) #1

declare dso_local i32 @parse_timestamp(i8*, i8**, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
