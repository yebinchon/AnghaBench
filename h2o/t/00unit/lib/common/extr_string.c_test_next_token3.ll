; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_next_token3.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_next_token3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }

@.str = private unnamed_addr constant [51 x i8] c"</foo.css>; rel=preload; xxx=,</bar.js>, </zzz.js>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"</foo.css>\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rel\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"xxx\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"</bar.js>\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"</zzz.js>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_next_token3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_next_token3() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %7 = call { i8*, i64 } @h2o_iovec_init(i32 %6)
  %8 = bitcast %struct.TYPE_5__* %5 to { i8*, i64 }*
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 0
  %10 = extractvalue { i8*, i64 } %7, 0
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 1
  %12 = extractvalue { i8*, i64 } %7, 1
  store i64 %12, i64* %11, align 8
  %13 = bitcast %struct.TYPE_5__* %1 to i8*
  %14 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 59, i64* %4, %struct.TYPE_5__* %2)
  store i8* %15, i8** %3, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @ok(i32 0)
  br label %157

19:                                               ; preds = %0
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @h2o_memis(i8* %20, i64 %21, i32 %22)
  %24 = call i32 @ok(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ok(i32 %33)
  %35 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 59, i64* %4, %struct.TYPE_5__* %2)
  store i8* %35, i8** %3, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = call i32 @ok(i32 0)
  br label %157

39:                                               ; preds = %19
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @h2o_memis(i8* %40, i64 %41, i32 %42)
  %44 = call i32 @ok(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 @h2o_memis(i8* %46, i64 %48, i32 %49)
  %51 = call i32 @ok(i32 %50)
  %52 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 59, i64* %4, %struct.TYPE_5__* %2)
  store i8* %52, i8** %3, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = call i32 @ok(i32 0)
  br label %157

56:                                               ; preds = %39
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %60 = call i32 @h2o_memis(i8* %57, i64 %58, i32 %59)
  %61 = call i32 @ok(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @ok(i32 %70)
  %72 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 59, i64* %4, %struct.TYPE_5__* %2)
  store i8* %72, i8** %3, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %56
  %75 = call i32 @ok(i32 0)
  br label %157

76:                                               ; preds = %56
  %77 = load i8*, i8** %3, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %80 = call i32 @h2o_memis(i8* %77, i64 %78, i32 %79)
  %81 = call i32 @ok(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp eq i8* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @ok(i32 %90)
  %92 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 59, i64* %4, %struct.TYPE_5__* %2)
  store i8* %92, i8** %3, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %76
  %95 = call i32 @ok(i32 0)
  br label %157

96:                                               ; preds = %76
  %97 = load i8*, i8** %3, align 8
  %98 = load i64, i64* %4, align 8
  %99 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %100 = call i32 @h2o_memis(i8* %97, i64 %98, i32 %99)
  %101 = call i32 @ok(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp eq i8* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @ok(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @ok(i32 %110)
  %112 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 59, i64* %4, %struct.TYPE_5__* %2)
  store i8* %112, i8** %3, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %96
  %115 = call i32 @ok(i32 0)
  br label %157

116:                                              ; preds = %96
  %117 = load i8*, i8** %3, align 8
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %120 = call i32 @h2o_memis(i8* %117, i64 %118, i32 %119)
  %121 = call i32 @ok(i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp eq i8* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 @ok(i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @ok(i32 %130)
  %132 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 59, i64* %4, %struct.TYPE_5__* %2)
  store i8* %132, i8** %3, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %116
  %135 = call i32 @ok(i32 0)
  br label %157

136:                                              ; preds = %116
  %137 = load i8*, i8** %3, align 8
  %138 = load i64, i64* %4, align 8
  %139 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %140 = call i32 @h2o_memis(i8* %137, i64 %138, i32 %139)
  %141 = call i32 @ok(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = icmp eq i8* %143, null
  %145 = zext i1 %144 to i32
  %146 = call i32 @ok(i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @ok(i32 %150)
  %152 = call i8* @h2o_next_token(%struct.TYPE_5__* %1, i8 signext 44, i64* %4, %struct.TYPE_5__* %2)
  store i8* %152, i8** %3, align 8
  %153 = load i8*, i8** %3, align 8
  %154 = icmp eq i8* %153, null
  %155 = zext i1 %154 to i32
  %156 = call i32 @ok(i32 %155)
  br label %157

157:                                              ; preds = %136, %134, %114, %94, %74, %54, %37, %17
  ret void
}

declare dso_local { i8*, i64 } @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @h2o_next_token(%struct.TYPE_5__*, i8 signext, i64*, %struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
