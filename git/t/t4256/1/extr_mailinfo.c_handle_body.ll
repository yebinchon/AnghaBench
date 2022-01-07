; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_handle_body.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_handle_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.mailinfo = type { i32, i64, i64*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*, %struct.strbuf*)* @handle_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_body(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.mailinfo*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.strbuf**, align 8
  %7 = alloca %struct.strbuf**, align 8
  %8 = alloca %struct.strbuf*, align 8
  store %struct.mailinfo* %0, %struct.mailinfo** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %9 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %10 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %11 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %10, i32 0, i32 2
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %17 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %18 = call i32 @find_boundary(%struct.mailinfo* %16, %struct.strbuf* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %131

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %2
  br label %23

23:                                               ; preds = %113, %22
  %24 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %25 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %31 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %32 = call i64 @is_multipart_boundary(%struct.mailinfo* %30, %struct.strbuf* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %40 = call i32 @handle_filter(%struct.mailinfo* %39, %struct.strbuf* %5)
  %41 = call i32 @strbuf_reset(%struct.strbuf* %5)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %44 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %45 = call i32 @handle_boundary(%struct.mailinfo* %43, %struct.strbuf* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %131

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %29, %23
  %50 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %51 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %52 = call i32 @decode_transfer_encoding(%struct.mailinfo* %50, %struct.strbuf* %51)
  %53 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %54 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %102 [
    i32 129, label %56
    i32 128, label %56
  ]

56:                                               ; preds = %49, %49
  %57 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @strbuf_insert(%struct.strbuf* %57, i32 0, i8* %59, i64 %61)
  %63 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %64 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %65 = call %struct.strbuf** @strbuf_split(%struct.strbuf* %64, i8 signext 10)
  store %struct.strbuf** %65, %struct.strbuf*** %6, align 8
  %66 = load %struct.strbuf**, %struct.strbuf*** %6, align 8
  store %struct.strbuf** %66, %struct.strbuf*** %7, align 8
  br label %67

67:                                               ; preds = %96, %56
  %68 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %69 = load %struct.strbuf*, %struct.strbuf** %68, align 8
  store %struct.strbuf* %69, %struct.strbuf** %8, align 8
  %70 = icmp ne %struct.strbuf* %69, null
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %73 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %72, i64 1
  %74 = load %struct.strbuf*, %struct.strbuf** %73, align 8
  %75 = icmp eq %struct.strbuf* %74, null
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %81 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 10
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %90 = call i32 @strbuf_addbuf(%struct.strbuf* %5, %struct.strbuf* %89)
  br label %99

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %71
  %93 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %94 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %95 = call i32 @handle_filter_flowed(%struct.mailinfo* %93, %struct.strbuf* %94, %struct.strbuf* %5)
  br label %96

96:                                               ; preds = %92
  %97 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %98 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %97, i32 1
  store %struct.strbuf** %98, %struct.strbuf*** %7, align 8
  br label %67

99:                                               ; preds = %88, %67
  %100 = load %struct.strbuf**, %struct.strbuf*** %6, align 8
  %101 = call i32 @strbuf_list_free(%struct.strbuf** %100)
  br label %106

102:                                              ; preds = %49
  %103 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %104 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %105 = call i32 @handle_filter_flowed(%struct.mailinfo* %103, %struct.strbuf* %104, %struct.strbuf* %5)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %108 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %121

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %115 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %116 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @strbuf_getwholeline(%struct.strbuf* %114, i32 %117, i8 signext 10)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br i1 %120, label %23, label %121

121:                                              ; preds = %113, %111
  %122 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %127 = call i32 @handle_filter(%struct.mailinfo* %126, %struct.strbuf* %5)
  br label %128

128:                                              ; preds = %125, %121
  %129 = load %struct.mailinfo*, %struct.mailinfo** %3, align 8
  %130 = call i32 @flush_inbody_header_accum(%struct.mailinfo* %129)
  br label %131

131:                                              ; preds = %128, %47, %20
  %132 = call i32 @strbuf_release(%struct.strbuf* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @find_boundary(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i64 @is_multipart_boundary(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i32 @handle_filter(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @handle_boundary(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i32 @decode_transfer_encoding(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i64) #2

declare dso_local %struct.strbuf** @strbuf_split(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @handle_filter_flowed(%struct.mailinfo*, %struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_list_free(%struct.strbuf**) #2

declare dso_local i32 @strbuf_getwholeline(%struct.strbuf*, i32, i8 signext) #2

declare dso_local i32 @flush_inbody_header_accum(%struct.mailinfo*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
