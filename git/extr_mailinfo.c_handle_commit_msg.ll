; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_handle_commit_msg.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_handle_commit_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i32, i32, i64, i32**, i64, %struct.TYPE_4__, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.strbuf = type { i32, i8* }

@header = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Message-Id: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mailinfo*, %struct.strbuf*)* @handle_commit_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_commit_msg(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mailinfo*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.mailinfo* %0, %struct.mailinfo** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %7 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %8 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %15 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %48

28:                                               ; preds = %23
  %29 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %48

36:                                               ; preds = %28, %18
  %37 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %38 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %44 = call i32 @flush_inbody_header_accum(%struct.mailinfo* %43)
  %45 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %46 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %42, %36
  store i32 0, i32* %3, align 4
  br label %159

48:                                               ; preds = %28, %23
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %51 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %56 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %61 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %62 = call i32 @check_inbody_header(%struct.mailinfo* %60, %struct.strbuf* %61)
  %63 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %64 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %66 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %159

70:                                               ; preds = %59
  br label %74

71:                                               ; preds = %54, %49
  %72 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %73 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %70
  %75 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %76 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %77 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %78 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @convert_to_utf8(%struct.mailinfo* %75, %struct.strbuf* %76, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %159

84:                                               ; preds = %74
  %85 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %86 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %137

89:                                               ; preds = %84
  %90 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @is_scissors_line(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %137

95:                                               ; preds = %89
  %96 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %97 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %96, i32 0, i32 1
  %98 = call i32 @strbuf_setlen(i32* %97, i32 0)
  %99 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %100 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %133, %95
  %102 = load i64*, i64** @header, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %101
  %109 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %110 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %109, i32 0, i32 3
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %108
  %118 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %119 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %118, i32 0, i32 3
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @strbuf_release(i32* %124)
  br label %126

126:                                              ; preds = %117, %108
  %127 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %128 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %127, i32 0, i32 3
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %101

136:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %159

137:                                              ; preds = %89, %84
  %138 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %139 = call i64 @patchbreak(%struct.strbuf* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %143 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %148 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %147, i32 0, i32 1
  %149 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %150 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @strbuf_addf(i32* %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %151)
  br label %153

153:                                              ; preds = %146, %141
  store i32 1, i32* %3, align 4
  br label %159

154:                                              ; preds = %137
  %155 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %156 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %155, i32 0, i32 1
  %157 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %158 = call i32 @strbuf_addbuf(i32* %156, %struct.strbuf* %157)
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %154, %153, %136, %83, %69, %47
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @flush_inbody_header_accum(%struct.mailinfo*) #1

declare dso_local i32 @check_inbody_header(%struct.mailinfo*, %struct.strbuf*) #1

declare dso_local i64 @convert_to_utf8(%struct.mailinfo*, %struct.strbuf*, i32) #1

declare dso_local i64 @is_scissors_line(i8*) #1

declare dso_local i32 @strbuf_setlen(i32*, i32) #1

declare dso_local i32 @strbuf_release(i32*) #1

declare dso_local i64 @patchbreak(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(i32*, i8*, i64) #1

declare dso_local i32 @strbuf_addbuf(i32*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
