; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_range_set_union.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_range_set_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range_set = type { i64, %struct.range* }
%struct.range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.range_set*, %struct.range_set*, %struct.range_set*)* @range_set_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_set_union(%struct.range_set* %0, %struct.range_set* %1, %struct.range_set* %2) #0 {
  %4 = alloca %struct.range_set*, align 8
  %5 = alloca %struct.range_set*, align 8
  %6 = alloca %struct.range_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.range*, align 8
  %10 = alloca %struct.range*, align 8
  %11 = alloca %struct.range*, align 8
  store %struct.range_set* %0, %struct.range_set** %4, align 8
  store %struct.range_set* %1, %struct.range_set** %5, align 8
  store %struct.range_set* %2, %struct.range_set** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.range_set*, %struct.range_set** %5, align 8
  %13 = getelementptr inbounds %struct.range_set, %struct.range_set* %12, i32 0, i32 1
  %14 = load %struct.range*, %struct.range** %13, align 8
  store %struct.range* %14, %struct.range** %9, align 8
  %15 = load %struct.range_set*, %struct.range_set** %6, align 8
  %16 = getelementptr inbounds %struct.range_set, %struct.range_set* %15, i32 0, i32 1
  %17 = load %struct.range*, %struct.range** %16, align 8
  store %struct.range* %17, %struct.range** %10, align 8
  %18 = load %struct.range_set*, %struct.range_set** %4, align 8
  %19 = getelementptr inbounds %struct.range_set, %struct.range_set* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  br label %24

24:                                               ; preds = %231, %3
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.range_set*, %struct.range_set** %5, align 8
  %28 = getelementptr inbounds %struct.range_set, %struct.range_set* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = load %struct.range_set*, %struct.range_set** %6, align 8
  %35 = getelementptr inbounds %struct.range_set, %struct.range_set* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi i1 [ true, %24 ], [ %37, %31 ]
  br i1 %39, label %40, label %232

40:                                               ; preds = %38
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = load %struct.range_set*, %struct.range_set** %5, align 8
  %44 = getelementptr inbounds %struct.range_set, %struct.range_set* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %123

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = load %struct.range_set*, %struct.range_set** %6, align 8
  %51 = getelementptr inbounds %struct.range_set, %struct.range_set* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %123

54:                                               ; preds = %47
  %55 = load %struct.range*, %struct.range** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.range, %struct.range* %55, i64 %57
  %59 = getelementptr inbounds %struct.range, %struct.range* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.range*, %struct.range** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.range, %struct.range* %61, i64 %63
  %65 = getelementptr inbounds %struct.range, %struct.range* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %60, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load %struct.range*, %struct.range** %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds %struct.range, %struct.range* %69, i64 %72
  store %struct.range* %73, %struct.range** %11, align 8
  br label %122

74:                                               ; preds = %54
  %75 = load %struct.range*, %struct.range** %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.range, %struct.range* %75, i64 %77
  %79 = getelementptr inbounds %struct.range, %struct.range* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.range*, %struct.range** %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.range, %struct.range* %81, i64 %83
  %85 = getelementptr inbounds %struct.range, %struct.range* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %80, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %74
  %89 = load %struct.range*, %struct.range** %10, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds %struct.range, %struct.range* %89, i64 %92
  store %struct.range* %93, %struct.range** %11, align 8
  br label %121

94:                                               ; preds = %74
  %95 = load %struct.range*, %struct.range** %9, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.range, %struct.range* %95, i64 %97
  %99 = getelementptr inbounds %struct.range, %struct.range* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.range*, %struct.range** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.range, %struct.range* %101, i64 %103
  %105 = getelementptr inbounds %struct.range, %struct.range* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %100, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %94
  %109 = load %struct.range*, %struct.range** %9, align 8
  %110 = load i32, i32* %7, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %7, align 4
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds %struct.range, %struct.range* %109, i64 %112
  store %struct.range* %113, %struct.range** %11, align 8
  br label %120

114:                                              ; preds = %94
  %115 = load %struct.range*, %struct.range** %10, align 8
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds %struct.range, %struct.range* %115, i64 %118
  store %struct.range* %119, %struct.range** %11, align 8
  br label %120

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %120, %88
  br label %122

122:                                              ; preds = %121, %68
  br label %143

123:                                              ; preds = %47, %40
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = load %struct.range_set*, %struct.range_set** %5, align 8
  %127 = getelementptr inbounds %struct.range_set, %struct.range_set* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %125, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.range*, %struct.range** %9, align 8
  %132 = load i32, i32* %7, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %7, align 4
  %134 = zext i32 %132 to i64
  %135 = getelementptr inbounds %struct.range, %struct.range* %131, i64 %134
  store %struct.range* %135, %struct.range** %11, align 8
  br label %142

136:                                              ; preds = %123
  %137 = load %struct.range*, %struct.range** %10, align 8
  %138 = load i32, i32* %8, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %8, align 4
  %140 = zext i32 %138 to i64
  %141 = getelementptr inbounds %struct.range, %struct.range* %137, i64 %140
  store %struct.range* %141, %struct.range** %11, align 8
  br label %142

142:                                              ; preds = %136, %130
  br label %143

143:                                              ; preds = %142, %122
  %144 = load %struct.range*, %struct.range** %11, align 8
  %145 = getelementptr inbounds %struct.range, %struct.range* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.range*, %struct.range** %11, align 8
  %148 = getelementptr inbounds %struct.range, %struct.range* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %231

152:                                              ; preds = %143
  %153 = load %struct.range_set*, %struct.range_set** %4, align 8
  %154 = getelementptr inbounds %struct.range_set, %struct.range_set* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %152
  %158 = load %struct.range_set*, %struct.range_set** %4, align 8
  %159 = getelementptr inbounds %struct.range_set, %struct.range_set* %158, i32 0, i32 1
  %160 = load %struct.range*, %struct.range** %159, align 8
  %161 = load %struct.range_set*, %struct.range_set** %4, align 8
  %162 = getelementptr inbounds %struct.range_set, %struct.range_set* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %163, 1
  %165 = getelementptr inbounds %struct.range, %struct.range* %160, i64 %164
  %166 = getelementptr inbounds %struct.range, %struct.range* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.range*, %struct.range** %11, align 8
  %169 = getelementptr inbounds %struct.range, %struct.range* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %167, %170
  br i1 %171, label %172, label %201

172:                                              ; preds = %157, %152
  %173 = load %struct.range_set*, %struct.range_set** %4, align 8
  %174 = call i32 @range_set_grow(%struct.range_set* %173, i32 1)
  %175 = load %struct.range*, %struct.range** %11, align 8
  %176 = getelementptr inbounds %struct.range, %struct.range* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.range_set*, %struct.range_set** %4, align 8
  %179 = getelementptr inbounds %struct.range_set, %struct.range_set* %178, i32 0, i32 1
  %180 = load %struct.range*, %struct.range** %179, align 8
  %181 = load %struct.range_set*, %struct.range_set** %4, align 8
  %182 = getelementptr inbounds %struct.range_set, %struct.range_set* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.range, %struct.range* %180, i64 %183
  %185 = getelementptr inbounds %struct.range, %struct.range* %184, i32 0, i32 0
  store i64 %177, i64* %185, align 8
  %186 = load %struct.range*, %struct.range** %11, align 8
  %187 = getelementptr inbounds %struct.range, %struct.range* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.range_set*, %struct.range_set** %4, align 8
  %190 = getelementptr inbounds %struct.range_set, %struct.range_set* %189, i32 0, i32 1
  %191 = load %struct.range*, %struct.range** %190, align 8
  %192 = load %struct.range_set*, %struct.range_set** %4, align 8
  %193 = getelementptr inbounds %struct.range_set, %struct.range_set* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.range, %struct.range* %191, i64 %194
  %196 = getelementptr inbounds %struct.range, %struct.range* %195, i32 0, i32 1
  store i64 %188, i64* %196, align 8
  %197 = load %struct.range_set*, %struct.range_set** %4, align 8
  %198 = getelementptr inbounds %struct.range_set, %struct.range_set* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %198, align 8
  br label %230

201:                                              ; preds = %157
  %202 = load %struct.range_set*, %struct.range_set** %4, align 8
  %203 = getelementptr inbounds %struct.range_set, %struct.range_set* %202, i32 0, i32 1
  %204 = load %struct.range*, %struct.range** %203, align 8
  %205 = load %struct.range_set*, %struct.range_set** %4, align 8
  %206 = getelementptr inbounds %struct.range_set, %struct.range_set* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %207, 1
  %209 = getelementptr inbounds %struct.range, %struct.range* %204, i64 %208
  %210 = getelementptr inbounds %struct.range, %struct.range* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.range*, %struct.range** %11, align 8
  %213 = getelementptr inbounds %struct.range, %struct.range* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %211, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %201
  %217 = load %struct.range*, %struct.range** %11, align 8
  %218 = getelementptr inbounds %struct.range, %struct.range* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.range_set*, %struct.range_set** %4, align 8
  %221 = getelementptr inbounds %struct.range_set, %struct.range_set* %220, i32 0, i32 1
  %222 = load %struct.range*, %struct.range** %221, align 8
  %223 = load %struct.range_set*, %struct.range_set** %4, align 8
  %224 = getelementptr inbounds %struct.range_set, %struct.range_set* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = sub nsw i64 %225, 1
  %227 = getelementptr inbounds %struct.range, %struct.range* %222, i64 %226
  %228 = getelementptr inbounds %struct.range, %struct.range* %227, i32 0, i32 1
  store i64 %219, i64* %228, align 8
  br label %229

229:                                              ; preds = %216, %201
  br label %230

230:                                              ; preds = %229, %172
  br label %231

231:                                              ; preds = %230, %151
  br label %24

232:                                              ; preds = %38
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @range_set_grow(%struct.range_set*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
