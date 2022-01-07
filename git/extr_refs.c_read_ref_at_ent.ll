; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_read_ref_at_ent.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_read_ref_at_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.read_ref_at_cb = type { i32, i64, i64, i64, i32*, i32, %struct.object_id, %struct.object_id, i32, %struct.object_id*, i64, i64*, i64*, i32* }

@.str = private unnamed_addr constant [32 x i8] c"log for ref %s has gap after %s\00", align 1
@RFC2822 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"log for ref %s unexpectedly ended on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, i8*, i64, i32, i8*, i8*)* @read_ref_at_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ref_at_ent(%struct.object_id* %0, %struct.object_id* %1, i8* %2, i64 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.read_ref_at_cb*, align 8
  store %struct.object_id* %0, %struct.object_id** %9, align 8
  store %struct.object_id* %1, %struct.object_id** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load i8*, i8** %15, align 8
  %18 = bitcast i8* %17 to %struct.read_ref_at_cb*
  store %struct.read_ref_at_cb* %18, %struct.read_ref_at_cb** %16, align 8
  %19 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %20 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %25 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %28 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %31 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %7
  %35 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %36 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %164

39:                                               ; preds = %34, %7
  %40 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %41 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %40, i32 0, i32 13
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @xstrdup(i8* %45)
  %47 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %48 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %47, i32 0, i32 13
  %49 = load i32*, i32** %48, align 8
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %52 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %51, i32 0, i32 12
  %53 = load i64*, i64** %52, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %58 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %57, i32 0, i32 12
  %59 = load i64*, i64** %58, align 8
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %62 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %68 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %72 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %71, i32 0, i32 11
  %73 = load i64*, i64** %72, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %77 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 1
  %80 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %81 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %80, i32 0, i32 11
  %82 = load i64*, i64** %81, align 8
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %75, %70
  %84 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %85 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %84, i32 0, i32 7
  %86 = call i32 @is_null_oid(%struct.object_id* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %115, label %88

88:                                               ; preds = %83
  %89 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %90 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %89, i32 0, i32 9
  %91 = load %struct.object_id*, %struct.object_id** %90, align 8
  %92 = load %struct.object_id*, %struct.object_id** %10, align 8
  %93 = call i32 @oidcpy(%struct.object_id* %91, %struct.object_id* %92)
  %94 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %95 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %94, i32 0, i32 7
  %96 = load %struct.object_id*, %struct.object_id** %10, align 8
  %97 = call i32 @oideq(%struct.object_id* %95, %struct.object_id* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %88
  %100 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %101 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %102 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %105 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %108 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @RFC2822, align 4
  %111 = call i32 @DATE_MODE(i32 %110)
  %112 = call i32 @show_date(i64 %106, i32 %109, i32 %111)
  %113 = call i32 @warning(i32 %100, i32 %103, i32 %112)
  br label %114

114:                                              ; preds = %99, %88
  br label %153

115:                                              ; preds = %83
  %116 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %117 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %120 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %125 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %124, i32 0, i32 9
  %126 = load %struct.object_id*, %struct.object_id** %125, align 8
  %127 = load %struct.object_id*, %struct.object_id** %10, align 8
  %128 = call i32 @oidcpy(%struct.object_id* %126, %struct.object_id* %127)
  br label %152

129:                                              ; preds = %115
  %130 = load %struct.object_id*, %struct.object_id** %10, align 8
  %131 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %132 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %131, i32 0, i32 9
  %133 = load %struct.object_id*, %struct.object_id** %132, align 8
  %134 = call i32 @oideq(%struct.object_id* %130, %struct.object_id* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %129
  %137 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %138 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %139 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %142 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %145 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @RFC2822, align 4
  %148 = call i32 @DATE_MODE(i32 %147)
  %149 = call i32 @show_date(i64 %143, i32 %146, i32 %148)
  %150 = call i32 @warning(i32 %137, i32 %140, i32 %149)
  br label %151

151:                                              ; preds = %136, %129
  br label %152

152:                                              ; preds = %151, %123
  br label %153

153:                                              ; preds = %152, %114
  %154 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %155 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %154, i32 0, i32 7
  %156 = load %struct.object_id*, %struct.object_id** %9, align 8
  %157 = call i32 @oidcpy(%struct.object_id* %155, %struct.object_id* %156)
  %158 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %159 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %158, i32 0, i32 6
  %160 = load %struct.object_id*, %struct.object_id** %10, align 8
  %161 = call i32 @oidcpy(%struct.object_id* %159, %struct.object_id* %160)
  %162 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %163 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %162, i32 0, i32 5
  store i32 1, i32* %163, align 8
  store i32 1, i32* %8, align 4
  br label %183

164:                                              ; preds = %34
  %165 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %166 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %165, i32 0, i32 7
  %167 = load %struct.object_id*, %struct.object_id** %9, align 8
  %168 = call i32 @oidcpy(%struct.object_id* %166, %struct.object_id* %167)
  %169 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %170 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %169, i32 0, i32 6
  %171 = load %struct.object_id*, %struct.object_id** %10, align 8
  %172 = call i32 @oidcpy(%struct.object_id* %170, %struct.object_id* %171)
  %173 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %174 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %164
  %178 = load %struct.read_ref_at_cb*, %struct.read_ref_at_cb** %16, align 8
  %179 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, -1
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %177, %164
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %182, %153
  %184 = load i32, i32* %8, align 4
  ret i32 %184
}

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @is_null_oid(%struct.object_id*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @oideq(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @warning(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @show_date(i64, i32, i32) #1

declare dso_local i32 @DATE_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
