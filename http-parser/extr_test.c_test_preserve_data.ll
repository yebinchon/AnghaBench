; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_preserve_data.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_preserve_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@__const.test_preserve_data.my_data = private unnamed_addr constant [26 x i8] c"application-specific data\00", align 16
@HTTP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"\0A*** parser.data not preserved accross http_parser_init ***\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_preserve_data() #0 {
  %1 = alloca [26 x i8], align 16
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = bitcast [26 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([26 x i8], [26 x i8]* @__const.test_preserve_data.my_data, i32 0, i32 0), i64 26, i1 false)
  %4 = getelementptr inbounds [26 x i8], [26 x i8]* %1, i64 0, i64 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i8* %4, i8** %5, align 8
  %6 = load i32, i32* @HTTP_REQUEST, align 4
  %7 = call i32 @http_parser_init(%struct.TYPE_3__* %2, i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds [26 x i8], [26 x i8]* %1, i64 0, i64 0
  %11 = icmp ne i8* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @abort() #4
  unreachable

15:                                               ; preds = %0
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @http_parser_init(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
