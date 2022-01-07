; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_handle_filter_flowed.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_handle_filter_flowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i32, i32 }
%struct.strbuf = type { i64, i8* }

@.str = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*, %struct.strbuf*, %struct.strbuf*)* @handle_filter_flowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_filter_flowed(%struct.mailinfo* %0, %struct.strbuf* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.mailinfo*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %13 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = call i32 @handle_filter(%struct.mailinfo* %17, %struct.strbuf* %18)
  br label %139

20:                                               ; preds = %3
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 10
  br i1 %29, label %30, label %49

30:                                               ; preds = %20
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %45, %35, %30
  br label %49

49:                                               ; preds = %48, %20
  %50 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @skip_prefix(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %49
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %56 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %55
  %66 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %67 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %72 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %73 = call i32 @handle_filter(%struct.mailinfo* %71, %struct.strbuf* %72)
  %74 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %75 = call i32 @strbuf_reset(%struct.strbuf* %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %78 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %79 = call i32 @handle_filter(%struct.mailinfo* %77, %struct.strbuf* %78)
  br label %139

80:                                               ; preds = %55, %49
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 32
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %93 = call i32 @strbuf_remove(%struct.strbuf* %92, i32 0, i32 1)
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, -1
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %91, %83, %80
  %97 = load i64, i64* %7, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = sub i64 %103, 1
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 32
  br i1 %108, label %109, label %125

109:                                              ; preds = %99
  %110 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %111 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %112 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %116 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = sext i32 %121 to i64
  %123 = sub i64 %114, %122
  %124 = call i32 @strbuf_add(%struct.strbuf* %110, i8* %113, i64 %123)
  br label %139

125:                                              ; preds = %99, %96
  %126 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %127 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %128 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %131 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @strbuf_insert(%struct.strbuf* %126, i32 0, i8* %129, i64 %132)
  %134 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %135 = call i32 @strbuf_reset(%struct.strbuf* %134)
  %136 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %137 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %138 = call i32 @handle_filter(%struct.mailinfo* %136, %struct.strbuf* %137)
  br label %139

139:                                              ; preds = %125, %109, %76, %16
  ret void
}

declare dso_local i32 @handle_filter(%struct.mailinfo*, %struct.strbuf*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
