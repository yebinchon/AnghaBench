; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_show_ref_array_item.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_show_ref_array_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.ref_array_item = type { i32 }
%struct.ref_format = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_ref_array_item(%struct.ref_array_item* %0, %struct.ref_format* %1) #0 {
  %3 = alloca %struct.ref_array_item*, align 8
  %4 = alloca %struct.ref_format*, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca %struct.strbuf, align 4
  store %struct.ref_array_item* %0, %struct.ref_array_item** %3, align 8
  store %struct.ref_format* %1, %struct.ref_format** %4, align 8
  %7 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %8 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %9 = load %struct.ref_array_item*, %struct.ref_array_item** %3, align 8
  %10 = load %struct.ref_format*, %struct.ref_format** %4, align 8
  %11 = call i64 @format_ref_array_item(%struct.ref_array_item* %9, %struct.ref_format* %10, %struct.strbuf* %5, %struct.strbuf* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @fwrite(i32 %19, i32 1, i32 %21, i32 %22)
  %24 = call i32 @strbuf_release(%struct.strbuf* %6)
  %25 = call i32 @strbuf_release(%struct.strbuf* %5)
  %26 = call i32 @putchar(i8 signext 10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @format_ref_array_item(%struct.ref_array_item*, %struct.ref_format*, %struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @die(i8*, i32) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @putchar(i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
